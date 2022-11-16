# Opposite number
# Difficulty: 8 kyu

opposite <- function(number){
  return(-number)
}

# Test

# You can test with testthat (http://r-pkgs.had.co.nz/tests.html#test-structure)

test_that("the opposite of positive 1 is negative 1", {
  expect_equal(opposite(1), -1)
})

test_that("the opposite of 0 is 0", {
  expect_equal(opposite(0), 0)
})

test_that("the opposite of positive 3.14 is negative 3.14", {
  expect_equal(opposite(3.14), -3.14)
})

test_that("the opposite of negative 400.2 is positive 400.2", {
  expect_equal(opposite(-400.2), 400.2)
})
