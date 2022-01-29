test_that("CleverStemmer() performs stemming on the string", {
  expect_equal(CleverStemmer("running buying feeding"), c("run", "buy", "feed"))
  })

test_that("CleverStemmer() output is a character vector", {
  expect_equal(typeof(CleverStemmer("running buying feeding")), "character")
})

test_that("CleverStemmer() errors if input is not a string or a character vector", {
  expect_error(CleverStemmer(list("apple", "crying")))
})
