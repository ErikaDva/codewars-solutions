# Opposites Attract
# Language: R
# Difficulty: 8 kyu

# Solution 1
lovefunc <- function(flower1, flower2){
  ifelse(flower1 %% 2 == flower2 %% 2, FALSE, TRUE)
}

# Refactored Solution 1
lovefunc <- function(flower1, flower2){
  flower1 %% 2 != flower2 %% 2
}

# Tests
test_that('Basic tests', {
  expect_equal(lovefunc(1,4), TRUE)
  expect_equal(lovefunc(2,2), FALSE)
  expect_equal(lovefunc(0,1), TRUE)
  expect_equal(lovefunc(0,0), FALSE)
})