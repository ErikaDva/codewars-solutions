# Simple multiplication
# Langugage: R
# Difficulty: 8 kyu

simple_multiplication <- function(number) {
  ifelse(number %% 2 == 0, number * 8, number * 9)
}


# Tests
test_that("Fixed test", {
  expect_equal(simple_multiplication(2), 16)
  expect_equal(simple_multiplication(1), 9)
  expect_equal(simple_multiplication(8), 64)
  expect_equal(simple_multiplication(4), 32)
  expect_equal(simple_multiplication(5), 45)
})