## code to prepare `DATASET` dataset goes here
library(readxl)
library(tidyverse)

data_stakeholders_raw <- read_xlsx(
  here::here(
    "data-raw",
    "stakeholders_questionnaire.xlsx")
)

## shorten headers
new_names <- map_chr(
  names(data_stakeholders_raw),
  str_trunc,
  width = 10
)

names(data_stakeholders_raw) <- new_names
data_stakeholders_clean <- data_stakeholders_raw |>
  janitor::clean_names()


usethis::use_data(data_stakeholders_clean, overwrite = TRUE)

question_clusters <- read_csv(
  here::here(
    "data-raw",
    "question-clusters.csv"
  )
)

cluster_names <- read_csv(
  here::here(
    "data-raw",
    "cluster_names.csv"
  )
)

data_clusters <- left_join(question_clusters, cluster_names)
usethis::use_data(data_clusters, overwrite = TRUE)
