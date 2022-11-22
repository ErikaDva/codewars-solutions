# Find Maximum and Minimum Values of a List
# Difficulty: 8 kyu

minimum <- function(vec){
  min(vec)
 } 

maximum <- function(vec){
  max(vec)
 } 


# Test

test_that('Basic tests for minimum', {
  expect_equal(minimum(c(-52, 56, 30, 29, -54, 0, -110)), -110)
  expect_equal(minimum(c(42, 54, 65, 87, 0)), 0)
  expect_equal(minimum(c(1, 2, 3, 4, 5, 10)), 1)
  expect_equal(minimum(c(-1, -2, -3, -4, -5, -10)), -10)
  expect_equal(minimum(c(9)), 9)
})

test_that('Basic tests for maximum', {
  expect_equal(maximum(c(-52, 56, 30, 29, -54, 0, -110)), 56)
  expect_equal(maximum(c(42, 54, 65, 87, 0)), 87)
  expect_equal(maximum(c(1, 2, 3, 4, 5, 10)), 10)
  expect_equal(maximum(c(-1, -2, -3, -4, -5, -10)), -1)
  expect_equal(maximum(c(9)), 9)
})