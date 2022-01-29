test_that("Non-string input value for CleverWordCloud should throw an error", {
  expect_error(CleverWordCloud(2, 6))
  expect_error(CleverWordCloud(list("text", c("a", "k"))))
})

test_that("When vectors are passed as strings, it should return an empty wordcloud", {
  expect_visible(CleverWordCloud("Victor Amelia Billy Arushi Adrianne", list("Billy")))
  expect_visible(CleverWordCloud("gdhs, fgfhj, dgsj"), list("is"))
})
