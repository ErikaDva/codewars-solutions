# L1: Set Alarm
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

set_alarm <- function(employed, vacation) {
  ifelse(employed & !vacation, TRUE, FALSE)
}


# Tests
test_that("tests", {
  expect_equal(set_alarm(TRUE, TRUE), FALSE)
  expect_equal(set_alarm(FALSE, TRUE), FALSE)
  expect_equal(set_alarm(FALSE, FALSE), FALSE)
  expect_equal(set_alarm(TRUE, FALSE), TRUE)
})