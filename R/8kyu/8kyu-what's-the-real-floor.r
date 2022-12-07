# What's the real floor?
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# {dplyr} solution
library(dplyr)
get_real_floor <- function(n) {
  case_when(n > 0 & n < 13 ~ n - 1,
            n >= 13 ~ n - 2,
            TRUE ~ n)
}

# Base R solution
get_real_floor <- function(n) {
  if (n > 0 & n < 13) {
    n - 1
  }else if (n >= 13) {
    n - 2
  }else{
    n
  }
}

# Tests
test_that('Fixed tests', {
  expect_equal(get_real_floor(1), 0)
  expect_equal(get_real_floor(5), 4)
  expect_equal(get_real_floor(15), 13) 
})