context("Data check")

test_that("data objects are unchanged", {
  expect_equal_to_reference(stlAsthma, "stlAsthma.rds")
  expect_equal_to_reference(stlInsurance, "stlInsurance.rds")
  expect_equal_to_reference(stlLead, "stlLead.rds")
  expect_equal_to_reference(stlMurders, "stlMurders.rds")
  expect_equal_to_reference(stlSmoking, "stlSmoking.rds")
})
