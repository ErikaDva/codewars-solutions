# Even or Odd
# Difficulty: 8 kyu

even_or_odd <- function(n) {
  ifelse(n %% 2 == 0, "Even", "Odd")
}


# Test

test_that('Basic tests', {
  expect_equal(even_or_odd(2), "Even")
  expect_equal(even_or_odd(1), "Odd")
  expect_equal(even_or_odd(-4), "Even")
  expect_equal(even_or_odd(-3), "Odd")
  expect_equal(even_or_odd(0), "Even")
  expect_equal(even_or_odd(1545452), "Even")
  expect_equal(even_or_odd(7), "Odd")
  expect_equal(even_or_odd(78), "Even")
  expect_equal(even_or_odd(17), "Odd")
  expect_equal(even_or_odd(74156741), "Odd")
  expect_equal(even_or_odd(100000), "Even")
})