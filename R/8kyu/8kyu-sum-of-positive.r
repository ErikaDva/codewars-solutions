# Sum of Positive
# Difficulty: 8 kyu

positive_sum <- function(vec){
  sum(vec[vec > 0])
}


# Tests

test_that('Basic tests', {
  expect_equal(positive_sum(c(1,2,3,4,5)),15)
  expect_equal(positive_sum(c(1,-2,3,4,5)),13)
  expect_equal(positive_sum(c(-1,2,3,4,-5)),9)
  expect_equal(positive_sum(c()),0)
  expect_equal(positive_sum(c(-1,-2,-3,-4,-5)),0)
})