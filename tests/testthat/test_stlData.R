context("Data check")

test_that("data objects are unchanged", {

  expect_equal_to_reference(stlLead, "stlLead.rds")
  expect_equal_to_reference(stlMurders, "stlMurders.rds")

})
