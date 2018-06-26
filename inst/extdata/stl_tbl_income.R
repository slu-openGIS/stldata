library(tidycensus)
library(dplyr)
library(stringr)

mi2010 <- get_acs(geography = "tract", variable = "B19013_001", year = 2010, state = 29, county = 510)
mi2016 <- get_acs(geography = "tract", variable = "B19013_001", year = 2016, state = 29, county = 510)

mi2010 %>%
  rename(mi10 = estimate) %>%
  mutate(mi10_inflate = mi10*1.108645) %>%
  rename(mi10_moe = moe) -> mi2010

mi2016 %>%
  rename(mi16 = estimate) %>%
  rename(mi16_moe = moe) %>%
  select(GEOID, mi16, mi16_moe) -> mi2016

stl_tbl_income <- left_join(mi2010, mi2016, by = "GEOID")

stl_tbl_income %>%
  mutate(delta = mi16-mi10_inflate) %>%
  rename(geoID = GEOID) %>%
  rename(nameLSAD = NAME) %>%
  mutate(tractCE = as.integer(str_sub(geoID, start = -6, end = -1))) %>%
  select(geoID, tractCE, nameLSAD, everything()) -> stl_tbl_income

save(stl_tbl_income, file = "data/stl_sf_tracts.rda")
saveRDS(stl_tbl_income, "tests/testthat/data/stl_tbl_income.rds")
