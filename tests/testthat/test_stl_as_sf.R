context("sf conversion")

# test errors ------------------------------------------------

test_that("input error trigged", {
  expect_error(stl_as_sf(stl_tbl_sluPlaces), "The given table is not available for automatic conversion to an sf object.")
})

test_that("input error trigged", {
  expect_error(stl_as_sf(stl_tbl_asthma), "The package sf must be loaded prior to executing this function.")
})

# test conversion ------------------------------------------------

library(sf)

asthma <- stl_as_sf(stl_tbl_asthma)
income <- stl_as_sf(stl_tbl_income)
insurance <- stl_as_sf(stl_tbl_insurance)
lead <- stl_as_sf(stl_tbl_lead)
smoking <- stl_as_sf(stl_tbl_smoking)

test_that("data objects are converted to sf", {
  expect_is(asthma, "sf")
  expect_is(income, "sf")
  expect_is(insurance, "sf")
  expect_is(lead, "sf")
  expect_is(smoking, "sf")
})

detach("package:sf", unload=TRUE)
