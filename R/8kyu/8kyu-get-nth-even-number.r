# Get Nth Even Number
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

nth_even <- function(n) {
  n * 2 - 2
}


# Tests
test_that("Fixed tests", {
  expect_equal(nth_even(1), 0)
  expect_equal(nth_even(2), 2)
  expect_equal(nth_even(3), 4)
  expect_equal(nth_even(100), 198)
  expect_equal(nth_even(1298734), 2597466)
})