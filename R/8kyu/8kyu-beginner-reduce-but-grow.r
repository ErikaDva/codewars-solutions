# Beginner - Reduce but Grow
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution 1
grow <- function(arr) {
  prod(arr)
}

# Solution 2
grow <- function(arr) {
  Reduce("*", arr)
}


# Tests
test_that("basic tests", {
  expect_equal(grow(c(1, 2, 3)), 6)
  expect_equal(grow(c(4, 1, 1, 1, 4)), 16)
  expect_equal(grow(c(2, 2, 2, 2, 2, 2)), 64)
})