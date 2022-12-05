# Count the Monkeys!
# Language: R
# Difficulty: 8 kyu

# Solution 1
monkey_count <- function(n) {
  seq(1, n)
}

# Solution 2
monkey_count <- function(n) {
  1:n
}


# Tests
test_that('basic tests', {
  expect_equal(monkey_count(5), c(1, 2, 3, 4, 5))
  expect_equal(monkey_count(3), c(1, 2, 3))
  expect_equal(monkey_count(9), c(1, 2, 3, 4, 5, 6, 7, 8, 9))
  expect_equal(monkey_count(10), c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
  expect_equal(monkey_count(20), c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20))
})