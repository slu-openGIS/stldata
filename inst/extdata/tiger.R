library(sf)
library(tigris)

stl <- tracts(state = "MO", county = 510)
stl_sf_tracts <- st_as_sf(stl)

save(stl_sf_tracts, file = "data/stl_sf_tracts.rda")
