# Multiply
# Difficulty: 8 kyu

# Task
mul <- function(a, b) {
  a * c # try to figure out why it doesn't work!
}

# Solution
mul <- function(a, b) {
  a * b
}


# Tests

test_that("test for associativity of multiplication", {
  a <- runif(1, 0, 10000)
  b <- runif(1, 0, 10000)
  c <- runif(1, 0, 10000)
  expect_equal(mul(a, b), a * b)
  expect_equal(mul(mul(a, b), c), a * b * c)
  expect_equal(mul(a, mul(b, c)), a * b * c)
})