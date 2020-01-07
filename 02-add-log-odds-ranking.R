library(tidytext)
library(tidylo)

find_keywords2 <- function(job_description = "Accountants", n = 10) {
  job_descs %>% 
    unnest_tokens(word, description) %>% 
    count(title, word) %>% 
    filter(
      !(word %in% tidytext::stop_words$word)
      ) %>% 
    bind_log_odds(title, word, n) %>% 
    arrange(-log_odds) %>% 
    group_by(title) %>% 
    slice(1:10) %>% 
    filter(
      grepl(pattern = job_description, x = title)
      ) %>% 
    inner_join(
      find_keywords(job_description, n = 10) %>%
        tibble::enframe(name = "word", value = "tf_idf")
      ) %>% 
    mutate(
      geom_mean = sqrt(log_odds * tf_idf)
      ) %>% 
    arrange(desc(geom_mean))
}

find_keywords2("Accountants")

# broken because of slice and n 
find_keywords2("Aerospace Engineers", 3)
