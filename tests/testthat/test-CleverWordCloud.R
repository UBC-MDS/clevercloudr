test_that("Non-dataframe input value for CleverWordCloud should throw an error", {
  expect_error(CleverWordCloud(2))
  expect_error(CleverWordCloud(list(4)))
})

test_that("String input value for CleverWordCloud should throw an error", {
  expect_error(CleverWordCloud("Victor Amelia Arushi Adrianne"))
  expect_error(CleverWordCloud('gdhs, fgfhj, dgsj'))
})
