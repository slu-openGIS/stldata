# load dplyr package for data cleaning
library(dplyr)

# import full dataset of 2008-2016 St. Louis Crimes
#
#rraw data are available from the SLMPD - http://www.slmpd.org/Crimereports.shtml;
# data have been significantly cleaned and represent crimes that have valid spatial data;
# cleaned data are too large to post here; contact Chris at prenercg@slu.edu if you are
# interested in the larger dataset

allCrime <- read.csv("crimeData.csv", stringsAsFactors = FALSE)

# select murders from dataset, arrange by date and time, and drop unneeded variables

stlMurders <- allCrime %>%
  filter(ucr == 1) %>%
  arrange(yearoccurred, monthoccurred, dayoccurred, timeoccurred) %>%
  select(id, dateoccurred, yearoccurred, monthoccurred, timeoccurred,
         description, district:ileadsstreet)

# save as .RData file for inclusion in atlas week package

save(stlMurders, file = "stlMurders.RData")
