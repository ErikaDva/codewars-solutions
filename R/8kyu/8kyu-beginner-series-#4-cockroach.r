# Beginner Series #4 Cockroach
# Langugage: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution 1
cockroach_speed <- function(s){
  floor(s * 27.7777777778)
}

# Solution (2 more concise)
cockroach_speed <- function(s){
  s %/% 0.036
}


# Tests
test_that('Basic tests', {
  expect_equal(cockroach_speed(1.08),30)
  expect_equal(cockroach_speed(1.09),30)
  expect_equal(cockroach_speed(0),0)
})