context("Data check")

library(sf)

test_that("data objects are unchanged", {
  expect_equal_to_reference(stl_sf_boundary, "data/stl_sf_boundary.rds")
  expect_equal_to_reference(stl_sf_historic, "data/stl_sf_historic.rds")
  expect_equal_to_reference(stl_sf_hydro, "data/stl_sf_hydro.rds")
  expect_equal_to_reference(stl_sf_tracts, "data/stl_sf_tracts.rds")
  expect_equal_to_reference(stl_tbl_asthma, "data/stl_tbl_asthma.rds")
  expect_equal_to_reference(stl_tbl_income, "data/stl_tbl_income.rds")
  expect_equal_to_reference(stl_tbl_insurance, "data/stl_tbl_insurance.rds")
  expect_equal_to_reference(stl_tbl_lead, "data/stl_tbl_lead.rds")
  expect_equal_to_reference(stl_tbl_murders, "data/stl_tbl_murders.rds")
  expect_equal_to_reference(stl_tbl_sluPlaces, "data/stl_tbl_sluPlaces.rds")
  expect_equal_to_reference(stl_tbl_smoking, "data/stl_tbl_smoking.rds")
  expect_equal_to_reference(stl_tbl_water, "data/stl_tbl_water.rds")
})
