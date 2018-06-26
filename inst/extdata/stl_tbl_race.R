library(tidycensus)
library(dplyr)
library(stringr)

race2010 <- get_acs(geography = "tract", table = "B02001", year = 2010, state = 29, county = 510, output = "wide")
race2016 <- get_acs(geography = "tract", table = "B02001", year = 2016, state = 29, county = 510, output = "wide")

pop2010 <- select(race2010, GEOID, NAME, B02001_001E, B02001_001M)
pop2016 <- select(race2016, GEOID, B02001_001E, B02001_001M)

race2010 %>%
  rename(white10 = B02001_002E) %>%
  rename(white10_moe = B02001_002M) %>%
  rename(black10 = B02001_003E) %>%
  rename(black10_moe = B02001_003M) %>%
  select(GEOID, NAME, white10, white10_moe, black10, black10_moe) -> race2010

race2016 %>%
  rename(white16 = B02001_002E) %>%
  rename(white16_moe = B02001_002M) %>%
  rename(black16 = B02001_003E) %>%
  rename(black16_moe = B02001_003M) %>%
  select(GEOID, white16, white16_moe, black16, black16_moe) -> race2016

stl_tbl_race <- left_join(race2010, race2016, by = "GEOID")

stl_tbl_race %>%
  mutate(white_delta = white16-white10) %>%
  mutate(black_delta = black16-black10) %>%
  rename(geoID = GEOID) %>%
  rename(nameLSAD = NAME) %>%
  mutate(tractCE = as.integer(str_sub(geoID, start = -6, end = -1))) %>%
  select(geoID, tractCE, nameLSAD, white10, white10_moe, white16, white16_moe, white_delta,
         black10, black10_moe, black16, black16_moe, black_delta) -> stl_tbl_race

save(stl_tbl_income, file = "data/stl_tbl_race.rda")
saveRDS(stl_tbl_income, "tests/testthat/data/stl_tbl_race.rds")

pop2010 %>%
  rename(pop10 = B02001_001E) %>%
  rename(pop10_moe = B02001_001M) -> pop2010

pop2016 %>%
  rename(pop16 = B02001_001E) %>%
  rename(pop16_moe = B02001_001M) -> pop2016

stl_tbl_pop <- left_join(pop2010, pop2016, by = "GEOID")

stl_tbl_pop %>%
  mutate(delta = pop16-pop10) %>%
  rename(geoID = GEOID) %>%
  rename(nameLSAD = NAME) %>%
  mutate(tractCE = as.integer(str_sub(geoID, start = -6, end = -1))) %>%
  select(geoID, tractCE, nameLSAD, everything())-> stl_tbl_pop

save(stl_tbl_income, file = "data/stl_tbl_pop.rda")
saveRDS(stl_tbl_income, "tests/testthat/data/stl_tbl_pop.rds")
