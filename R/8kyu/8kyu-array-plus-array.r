# Array plus array
# Language: R
# Difficulty: 8 kyu

array_plus_array <- function(vec1,vec2){
  sum(c(vec1, vec2))
}


# Tests
test_that('Basic tests', {
  expect_equal(array_plus_array(c(1, 2, 3), c(4, 5, 6)), 21)
  expect_equal(array_plus_array(c(-1, -2, -3), c(-4, -5, -6)), -21)
  expect_equal(array_plus_array(c(0, 0, 0), c(4, 5, 6)), 15)
  expect_equal(array_plus_array(c(100, 200, 300), c(400, 500, 600)), 2100)
})