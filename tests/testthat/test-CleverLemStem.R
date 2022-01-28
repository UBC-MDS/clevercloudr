test_that("CleverLemStem() does lemmatizing for an input list", {
  expect_equal(CleverLemStem(list("running", "ran", "runs")), c("run", "run", "run"))
  })


test_that("CleverLemStem() does stemming for an input list", {
  expect_equal(CleverLemStem(list("feet", "lovers", "accounting")), c("foot", "lover", "account"))
  })

test_that("CleverLemStem() errors if input is not a list", {
  expect_error(CleverLemStem(c("crying", "running")))
  })

test_that("CleverLemStem() errors if each element of the input list is not a string", {
  expect_error(CleverLemStem(list(1,2,34, 0.9, "running", "feet")))
  })
