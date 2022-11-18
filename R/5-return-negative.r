# Return negative
# Difficulty: 8 kyu

make_negative <- function(num){
  -abs(num)
}

# Test

test_that('Basic tests', {
  expect_equal(make_negative(42), -42)
  expect_equal(make_negative(-9), -9)
  expect_equal(make_negative(0), 0)
  expect_equal(make_negative(1), -1)
  expect_equal(make_negative(-1), -1)
})