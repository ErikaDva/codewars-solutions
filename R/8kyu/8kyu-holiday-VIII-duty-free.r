# Holiday VIII - Duty Free
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

duty_free <- function(price, discount, holiday_cost){
  as.integer(holiday_cost / (price * discount / 100))
}


# Tests
test_that('Basic tests', {
  expect_equal(duty_free(12, 50, 1000), 166)
  expect_equal(duty_free(17, 10, 500), 294)
  expect_equal(duty_free(24, 35, 3000), 357)
  expect_equal(duty_free(1400, 35, 10000), 20)
  expect_equal(duty_free(700, 26, 7000), 38)
})