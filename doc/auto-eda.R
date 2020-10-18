# install.packages("dataMaid")
# install.packages("xray")
# install.packages("skimr")
# install.packages("inspectdf")
park_visits <- readr::read_csv(here::here("data/park-visits.csv"))
gas_price <- readr::read_csv(here::here("data/gas-price.csv"))
state_pop <- readr::read_csv(here::here("data/state-pop.csv"))

dataMaid::check(park_visits)
dataMaid::makeDataReport(park_visits, codebook = TRUE)
dataMaid::makeDataReport(gas_price, codebook = TRUE)
dataMaid::makeDataReport(state_pop, codebook = TRUE)


xray::anomalies(park_visits)
# xray::distributions(park_visits, outdir = here::here("doc"))
autoEDA::autoEDA(park_visits, outputPath = "doc")
autoEDA::autoEDA(park_visits, 
                 outputPath = "doc",
                 y = "year")

