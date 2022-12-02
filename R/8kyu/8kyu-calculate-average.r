# Calculate average
# Language: R
# Difficulty: 8 kyu

find_average <- function(vec){
  ifelse(length(vec) == 0, 0, mean(vec))
}


# Tests
test_that('Basic tests', {
  expect_equal(find_average(c(1,1,1)),1)
  expect_equal(find_average(c(1,2,3)),2)  
  expect_equal(find_average(c(1,2,3,4)),2.5)
  expect_equal(find_average(c()),0)  
})