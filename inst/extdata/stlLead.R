# load dplyr package for data cleaning
library(dplyr)

# import lead testing data
stlLead <- read.csv("inst/extdata/stlLead.csv", stringsAsFactors = FALSE)

# lead data
stlLead <- stlLead %>%
  select(GEOID, TRACTCE, NAMELSAD, countTested, pctElevated) %>%
  rename(geoID = GEOID) %>%
  rename(tractCE = TRACTCE) %>%
  rename(nameLSAD = NAMELSAD)

# import race data
race <- readLines("inst/extdata/ACS_15_5YR_B02001.csv")
race <- race[-2]
race <- read.csv(textConnection(race), header = TRUE, stringsAsFactors = FALSE)

# clean race data
race <- race %>%
  select(GEO.id2, HD01_VD01, HD02_VD01, HD01_VD02, HD02_VD02, HD01_VD03, HD02_VD03) %>%
  rename(geoID = GEO.id2) %>%
  rename(totalPop = HD01_VD01) %>%
  rename(totalPop_MOE = HD02_VD01) %>%
  rename(white = HD01_VD02) %>%
  rename(white_MOE = HD02_VD02) %>%
  rename(black = HD01_VD03) %>%
  rename(black_MOE = HD02_VD03)

# import poverty data
poverty <- readLines("inst/extdata/ACS_15_5YR_S1701.csv")
poverty <- poverty[-2]
poverty <- read.csv(textConnection(poverty), header = TRUE, stringsAsFactors = FALSE)

# clean poverty data
poverty <- poverty %>%
  select(GEO.id2, HC02_EST_VC01, HC02_MOE_VC01, HC02_EST_VC03, HC02_MOE_VC03) %>%
  rename(geoID = GEO.id2) %>%
  rename(povertyTot = HC02_EST_VC01) %>%
  rename(povertyTot_MOE = HC02_MOE_VC01) %>%
  rename(povertyU18 =  HC02_EST_VC03) %>%
  rename(povertyU18_MOE =  HC02_MOE_VC03)

# merge data
stlLead <- stlLead %>%
  left_join(race, by = "geoID") %>%
  left_join(poverty, by = "geoID")

# export data
save(stlLead, file = "data/stlLead.RData")
