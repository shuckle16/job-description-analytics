library(tidytext)
library(tidylo)

find_keywords2 <- function(job_description = "Accountants", n = 10) {
  job_descs %>% 
    unnest_tokens(word, Description) %>% 
    count(Title, word) %>% 
    filter(
      !(word %in% tidytext::stop_words$word)
      ) %>% 
    bind_log_odds(Title, word, n) %>% 
    arrange(-log_odds) %>% 
    group_by(Title) %>% 
    slice(1:10) %>% 
    filter(
      grepl(pattern = job_description, x = Title)
      ) %>% 
    inner_join(
      find_keywords(job_description) %>%
        tibble::enframe(name = "word", value = "tf_idf")
      ) %>% 
    mutate(
      geom_mean = sqrt(log_odds * tf_idf)
      ) %>% 
    arrange(desc(geom_mean))
}

find_keywords2("Accountants")
