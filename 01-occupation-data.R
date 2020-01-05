library(tidyverse)
library(text2vec)

job_descs <- read_delim("data/Occupation Data.txt", delim = "\t")

make_job_dtm <- function(job_title = "Accountants") {
  
  it_train <- itoken(job_descs$Description, 
                     preprocessor = tolower, 
                     tokenizer = word_tokenizer, 
                     ids = job_descs$Title, 
                     progressbar = FALSE)
  vocab <- create_vocabulary(it_train)
  
  vectorizer = vocab_vectorizer(vocab)
  t1 = Sys.time()
  dtm_train <- create_dtm(it_train, vectorizer)
  print(difftime(Sys.time(), t1, units = 'sec'))
  
  dtm_train
}

find_keywords <- function(job_title = "Accountants", n = 10, use_tfidf = F, remove_stopwords = F) {
  
  dtm_train <- make_job_dtm(job_title)
  
  fit_transform(dtm_train, TfIdf$new())[job_title,] %>% sort(decreasing = T) %>% head(n)
}

find_similar_jobs <- function(job_title = "Accountants", n = 10) {
  
  dtm_train <- make_job_dtm(job_title)
  
  fit_transform(dtm_train, TfIdf$new()) %>% 
    sim2(x = ., method = "cosine", norm = "l2") %>% 
    .[job_title,] %>% 
    sort(decreasing = T) %>% 
    head(11) %>% 
    tail(n)
}

find_keywords("Accountants")
find_keywords("Software Developers, Applications")
find_keywords("Actuaries")
find_keywords("Nurse Practitioners")
find_keywords("Registered Nurses")
find_keywords("Postal Service Mail Carriers")
find_keywords("Chemists")
find_keywords("Aerospace Engineers", 5)

find_similar_jobs("Accountants")
find_similar_jobs("Registered Nurses")
find_similar_jobs("Software Developers, Applications", 5)
