# Grasshopper - Summation
# Language: R
# Difficulty: 8 kyu

# Solution 1
summation <- function(n) {
    sum(seq(1, n))
}

# Solution 2
summation <- function(n) {
  sum(1:n)
}


# Tests
test_that('basic tests', {
  expect_equal(summation(1), 1)
  expect_equal(summation(8), 36)
  expect_equal(summation(22), 253)
  expect_equal(summation(100), 5050)
  expect_equal(summation(213), 22791)
})