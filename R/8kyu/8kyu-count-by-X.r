# Count by X
# Langugage: R
# Difficulty: 8 kyu

count_by <- function(x, n){
  seq(x, x * n, x)
}


# Tests
test_that('Basic tests', {
  expect_equal(count_by(1, 5), c(1, 2, 3, 4, 5))
  expect_equal(count_by(2, 5), c(2, 4, 6, 8, 10))
  expect_equal(count_by(3, 5), c(3, 6, 9, 12, 15))
  expect_equal(count_by(50, 5), c(50, 100, 150, 200, 250))
  expect_equal(count_by(100, 5), c(100, 200, 300, 400, 500))
})