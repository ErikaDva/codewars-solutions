# Third Angle of a Triangle
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

other_angle <- function(a, b){
  180 - a - b
}


# Tests
test_that("Example Tests", {
  expect_equal(other_angle(30, 60), 90)
  expect_equal(other_angle(60, 60), 60)
  expect_equal(other_angle(43, 78), 59)
  expect_equal(other_angle(10, 20), 150)
})