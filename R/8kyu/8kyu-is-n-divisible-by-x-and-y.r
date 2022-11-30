# Is n divisible by x and y?
# Language: R
# Difficulty: 8 kyu

# Solution 1
is_divisible <- function(n, x, y) {
  if (n%%x == 0 && n%%y == 0){
    TRUE
  }else{
    FALSE
  }
}

# A shorter alternative to Solution 1
is_divisible <- function(n, x, y) {
  n %% x == 0 & n %% y == 0
}

# Tests
test_that("basic tests", {
  expect_equal(is_divisible(3, 3, 4), FALSE)
  expect_equal(is_divisible(12, 3, 4), TRUE)
  expect_equal(is_divisible(8, 3, 4), FALSE)
  expect_equal(is_divisible(48, 3, 4), TRUE)
  expect_equal(is_divisible(100, 5, 10), TRUE)
  expect_equal(is_divisible(100, 5, 3), FALSE)
  expect_equal(is_divisible(4, 4, 2), TRUE)
  expect_equal(is_divisible(5, 2, 3), FALSE)
  expect_equal(is_divisible(17, 17, 17), TRUE)
  expect_equal(is_divisible(17, 1, 17), TRUE)
})