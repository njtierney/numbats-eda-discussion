## code to prepare `DATASET` dataset goes here
library(readr)
park_visits <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-09-17/national_parks.csv")

write_csv(park_visits, "data/park-visits.csv")

# copied/pasted from https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-09-17/readme.md
np_kable <- 
  "|variable          |class     |description |
|:-----------------|:---------|:-----------|
|year_raw          |integer | Year of record |
|gnis_id           |character | ID for shapefile and long-lat lookup |
|geometry          |character | Geometric shape for shapefile |
|metadata          |character | URL to metadata about the park |
|number_of_records |double    | Number of records |
|parkname          |character | Full park name |
|region            |character | US Region where park is located |
|state             |character | State abbreviation |
|unit_code         |character | Park code abbreviation |
|unit_name         |character | Park Unit name |
|unit_type         |character | Park unit type |
|visitors          |double    | Number of visitors |"

# https://stackoverflow.com/questions/48087762/markdown-table-to-data-frame-in-r
library(dplyr)
library(janitor)

read_tt_dd_kable <- function(file){
  read_delim(file = file,
             delim = "|") %>% 
    slice(-1) %>% 
    clean_names() %>% 
    select(-starts_with("x")) %>% 
    mutate(across(.fns = trimws))
}

read_tt_dd_kable(np_kable)  

