# Expression Matter
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

# Solution 1
expression_matter <- function(a, b, c) {
  A = a * (b + c)
  B = a * b * c
  C = a + b * c
  D = (a + b) * c
  E = a + b + c
  max(A, B, C, D, E)
}

# Refactored Solution 1
expression_matter <- function(a, b, c) {
  max(a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c)
}


# Tests
test_that("basic tests", {
  expect_equal(expression_matter(2, 1, 2), 6)
  expect_equal(expression_matter(2, 1, 1), 4)
  expect_equal(expression_matter(1, 1, 1), 3)
  expect_equal(expression_matter(1, 2, 3), 9)
  expect_equal(expression_matter(1, 3, 1), 5)
  expect_equal(expression_matter(2, 2, 2), 8)
  expect_equal(expression_matter(5, 1, 3), 20)
  expect_equal(expression_matter(3, 5, 7), 105)
  expect_equal(expression_matter(5, 6, 1), 35)
  expect_equal(expression_matter(1, 6, 1), 8)
  expect_equal(expression_matter(2, 6, 1), 14)
  expect_equal(expression_matter(6, 7, 1), 48)
  expect_equal(expression_matter(2, 10, 3), 60)
  expect_equal(expression_matter(1, 8, 3), 27)
  expect_equal(expression_matter(9, 7, 2), 126)
  expect_equal(expression_matter(1, 1, 10), 20)
  expect_equal(expression_matter(9, 1, 1), 18)
  expect_equal(expression_matter(10, 5, 6), 300)
  expect_equal(expression_matter(1, 10, 1), 12)
})