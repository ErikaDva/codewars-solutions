# Quarter of the year
# Langugage: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution using dplyr
library(dplyr)
quarter_of <- function(month){
  case_when(between(month, 1, 3) ~ 1,
            between(month, 4, 6) ~ 2,
            between(month, 7, 9) ~ 3,
            between(month, 10, 12) ~ 4)
}

# Using base R ceiling function
quarter_of <- function(month){
   ceiling(month / 3)
}


# Tests
test_that('Basic tests', {
  expect_equal(quarter_of(3), 1)
  expect_equal(quarter_of(8), 3)
  expect_equal(quarter_of(11), 4)
})