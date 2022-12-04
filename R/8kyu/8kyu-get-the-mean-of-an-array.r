# Get the mean of an array
# Langugage: R
# Difficulty: 8 kyu

# Rounded down to its nearest integer
get_average <- function(marks){
  floor(mean(marks))
}


# Tests
test_that('Basic tests', {
  expect_equal(get_average(c(2, 2, 2, 2)), 2)
  expect_equal(get_average(c(1, 5, 87, 45, 8, 8)), 25)
  expect_equal(get_average(c(2,5,13,20,16,16,10)), 11)
  expect_equal(get_average(c(1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7)), 11)
})