# Sum Mixed Array
# Langugage: R
# Version: 3.4.1
# Difficulty: 8 kyu

sum_mix <- function(vec){
  sum(as.numeric(vec))
}


# Tests
test_that('Basic tests', {
  expect_equal(sum_mix(c(9, 3, '7', '3')), 22)
  expect_equal(sum_mix(c('5', '0', 9, 3, 2, 1, '9', 6, 7)), 42)
  expect_equal(sum_mix(c('3', 6, 6, 0, '5', 8, 5, '6', 2,'0')), 41)
  expect_equal(sum_mix(c('1', '5', '8', 8, 9, 9, 2, '3')), 45)
  expect_equal(sum_mix(c(8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7)), 61)
})