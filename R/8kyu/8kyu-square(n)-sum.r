# Square(n) Sum
# Difficulty: 8 kyu

square_sum <- function(nums) {
  sum(nums^2)
}


# Tests

test_that("basic tests", {
  expect_equal(square_sum(c(1, 2)), 5)
  expect_equal(square_sum(c(0, 3, 4, 5)), 50)
  expect_equal(square_sum(c()), 0)
  expect_equal(square_sum(c(-1, -2)), 5)
  expect_equal(square_sum(c(-1, 0, 1)), 2)
})