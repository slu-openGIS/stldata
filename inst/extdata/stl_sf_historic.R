library(dplyr)
library(sf)

x <- stlHistoric

x %>%
  rename(COUNT = COUNT_) %>%
  mutate(NAME = as.character(DISNAME)) %>%
  mutate(NUMBER = as.character(DISNUM)) %>%
  rename(DATE = DIS_DATE)%>%
  mutate(LAYER = as.character(LAYER)) %>%
  select(NUMBER, NAME, LAYER, COUNT, DATE) -> stl_sf_historic

save(stl_sf_historic, file = "data/stl_sf_historic.rda")
