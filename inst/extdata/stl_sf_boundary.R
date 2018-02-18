library(gateway)
library(dplyr)
library(measurements)

city <- gw_get_repo("STL_BOUNDARY_City")

city %>%
  select(GEOID, NAMELSAD, ALAND, AWATER) %>%
  mutate(NAME = ifelse(NAMELSAD == "St. Louis city", "St. Louis City", NAMELSAD)) %>%
  mutate(LAND_SQMI = conv_unit(ALAND, "m2", "mi2")) %>%
  mutate(WATER_SQMI = conv_unit(AWATER, "m2", "mi2")) %>%
  select(-ALAND, -AWATER, -NAMELSAD) -> stl_sf_boundary

save(stl_sf_boundary, file = "data/stl_sf_boundary.rda")
