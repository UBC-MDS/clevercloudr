test_that("Non-dataframe input value for CleverWordCloud should throw an error", {
  expect_error(CleverWordCloud(2))
  expect_error(CleverWordCloud(list(4)))
})
