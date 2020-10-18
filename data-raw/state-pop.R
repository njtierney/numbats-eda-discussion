state_pop <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-09-17/state_pop.csv")

readr::write_csv(state_pop, "data/state-pop.csv")

gh_url <- "https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-09-17"

library(polite)
library(rvest)

"|variable |class     |description |
|:--------|:---------|:-----------|
|year     |integer   | Jan 1st of year |
|state    |character | State abbreviation |
|pop      |double    | Population |"