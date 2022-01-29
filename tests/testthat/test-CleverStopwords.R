test_that("CleverStopwords() does addition of unique strings only.", {
  stopwords_len <- length(as.list(stopwords::stopwords(language = "en")))
  word_unique <- length(list("123", "aaa"))
  word_dup <- stopwords_len + 1
  unique_total <- word_unique + stopwords_len
  expect_equal(length(CleverStopwords(list("123", "aaa"))), unique_total)
  expect_equal(length(CleverStopwords(list("a", "test"))), word_dup)
})

test_that("CleverStopwords() output is a list.", {
  expect_equal(typeof(CleverStopwords(list("would", "aaa"))), "list")
})

test_that("CleverStopwords() raises error if input is not a list", {
  expect_error(CleverStopwords(c("would", "aaa")))
  })

test_that("CleverStopwords() raises error if each element of the input list 
          is not a string", {
  expect_error(CleverStopwords(list(12, "aaa")))
  })
