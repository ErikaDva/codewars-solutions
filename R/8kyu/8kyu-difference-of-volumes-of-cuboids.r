# Difference of Volumes of Cuboids
# Language: R
# Difficulty: 8 kyu

find_difference <- function(a, b){
  abs(prod(a) - prod(b))
}


# Tests
test_that('Basic tests', {
  expect_equal(find_difference(c(3, 2, 5), c(1, 4, 4)), 14)
  expect_equal(find_difference(c(9, 7, 2), c(5, 2, 2)), 106)
})