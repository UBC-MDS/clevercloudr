test_that("CleverClean() checks if input paramter is a list", {
  expect_error(CleverClean(c(1,2,3, "hello")))
})

test_that("CleverClean() checks if input list contain only character elements", {
  expect_error(CleverClean(list(1,2,3, "hello")))
})

test_that("CleverClean() checks if input list is coverted to character vector", {
  expect_equal(CleverClean(list("hello", "world")), c("hello", "world"))
})

test_that("CleverClean() checks if strings are convered to lowercase and returned as a vector", {
  expect_equal(CleverClean(list("HELLO", "WORLD")), c("hello", "world"))
})

test_that("CleverClean() checks if all digits have been removed from strings", {
  expect_equal(CleverClean(list("hello123", "world456")), c("hello", "world"))
})

test_that("CleverClean() checks if all punctuation is removed from strings", {
  expect_equal(CleverClean(list("Hello!!", "$$World")), c("hello", "world"))
})

