# Sum Arrays
# Language: R
# Difficulty: 8 kyu

sum_array <- function(a){
  sum(a)
}


# Tests
test_that("Sample Tests", {
  expect_equal(sum_array(NULL), 0)
  expect_equal(sum_array(c(1, 2, 3)), 6)
  expect_equal(sum_array(c(1.1, 2.2, 3.3)), 6.6)
  expect_equal(sum_array(c(4, 5, 6)), 15)
  expect_equal(sum_array(seq_len(100)), 5050)
})