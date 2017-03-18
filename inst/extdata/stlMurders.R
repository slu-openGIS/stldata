# load dplyr package for data cleaning
library(dplyr)

# import full dataset of 2008-2016 St. Louis Crimes
#
# raw data are available from the SLMPD - http://www.slmpd.org/Crimereports.shtml;
# data have been significantly cleaned and represent crimes that have valid spatial data;
# cleaned data are too large to post here; contact Chris at prenercg@slu.edu if you are
# interested in the larger dataset

allCrime <- read.csv("inst/extdata/crimeData.csv", stringsAsFactors = FALSE)

# select murders from dataset, arrange by date and time, and drop unneeded variables

stlMurders <- allCrime %>%
  filter(ucr == 1) %>%
  arrange(yearoccurred, monthoccurred, dayoccurred, timeoccurred) %>%
  select(id, dateoccurred, yearoccurred, monthoccurred, dayoccurred, timeoccurred,
         description, district, neighborhood, ileadsaddress, ileadsstreet) %>%
  rename(fullDate = dateoccurred) %>%
  rename(year = yearoccurred) %>%
  rename(month = monthoccurred) %>%
  rename(day = dayoccurred) %>%
  rename(time = timeoccurred) %>%
  rename(descrip = description) %>%
  rename(nhood = neighborhood) %>%
  rename(address = ileadsaddress) %>%
  rename(street = ileadsstreet)

# save as .RData file for inclusion in stldata package

save(stlMurders, file = "data/stlMurders.RData")

# save as .csv file for inclusion in stldata package

write.csv(stlMurders, file = "inst/extdata/stlMurders.csv")
