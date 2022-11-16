# Find the smallest integer in the array

findSmallestInt <- function(arr){
  return(min(arr)) 
}

# Test

test_that("Sample Tests", {
  expect_equal(findSmallestInt(c(78,56,232,12,11,43)), 11)
  expect_equal(findSmallestInt(c(78,56,-2,12,8,-33)), -33)
  expect_equal(findSmallestInt(c(0, -1-.Machine$integer.max)), -1-.Machine$integer.max)
})