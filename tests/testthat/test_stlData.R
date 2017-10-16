context("Data check")

test_that("data objects are unchanged", {
  expect_equal_to_reference(stlAsthma, "stlAsthma.RData")
  expect_equal_to_reference(stlIncome, "stlIncome.RData")
  expect_equal_to_reference(stlInsurance, "stlInsurance.RData")
  expect_equal_to_reference(stlLead, "stlLead.RData")
  expect_equal_to_reference(stlMurders, "stlMurders.RData")
  expect_equal_to_reference(stlSmoking, "stlSmoking.RData")
})
