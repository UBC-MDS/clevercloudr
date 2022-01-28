test_that("Non-string input value for CleverWordCloud should throw an error", {
  expect_error(CleverWordCloud(2))
  expect_error(CleverWordCloud(list(4)))
})

test_that("Even if strings are not passed as vectors, it should return an empty wordcloud", {
  expect_visible(CleverWordCloud("Victor Amelia Arushi Adrianne"))
  expect_visible(CleverWordCloud("gdhs, fgfhj, dgsj"))
})
