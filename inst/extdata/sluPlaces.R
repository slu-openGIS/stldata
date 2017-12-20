
# create data
sluPlaces <- data.frame(
  id = c(1, 2, 3, 4, 5, 6),
  name = c("Morrissey Hall", "Starbucks", "Simon Rec", "Pius Library", "BSC", "The Pond"),
  lng = c(-90.237104, -90.234837, -90.235841, -90.234972, -90.232955, -90.236313),
  lat = c(38.637547, 38.635959, 38.635283, 38.636741, 38.634973, 38.636897),
  stringsAsFactors = FALSE
)

# export data
save(sluPlaces, file = "data/sluPlaces.RData")
