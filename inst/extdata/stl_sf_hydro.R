library(sf)
library(dplyr)
library(measurements)

x <- stlHydro

x %>%
  mutate(HYDROID = as.character(HYDROID)) %>%
  mutate(NAME = as.character(FULLNAME)) %>%
  rename(SQMETER = AWATER) %>%
  select(HYDROID, NAME, SQMETER) -> stl_sf_hydro

save(stl_sf_hydro, file = "data/stl_sf_hydro.rda")
