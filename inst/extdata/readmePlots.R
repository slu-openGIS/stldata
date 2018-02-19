library(stlData)
library(ggplot2)
library(viridis)

ggplot() +
  geom_sf(data = stl_sf_boundary, fill = "#5d5d5d", color = "#5d5d5d") +
  geom_sf(data = stl_sf_historic, fill = "#d48a72", color = "#d48a72") +
  geom_sf(data = stl_sf_hydro, fill = "#72bcd4", color = "#72bcd4") +
  labs(
    title = "Historic Districts",
    subtitle = "St. Louis, MO"
  )

ggsave("man/figures/refMap.png")

asthma <- stl_as_sf(stl_tbl_asthma)

ggplot() +
  geom_sf(data = asthma, mapping = aes(fill = pctAsthma), color = "#5d5d5d") +
  scale_fill_viridis() +
  labs(
    title = "Crude Asthma Prevalence",
    subtitle = "St. Louis, MO"
  )

ggsave("man/figures/asthmaMap.png")
