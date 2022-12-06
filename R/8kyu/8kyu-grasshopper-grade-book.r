# Grasshopper - Grade book
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution 1
get_grade <- function(a, b, c) {
  score = (a + b + c) / 3
  
  if (score >= 90) {
    "A"
  }else if (score >= 80 & score <= 90) {
    "B"
  }else if (score >= 70 & score <= 80) {
    "C"
  }else if (score >= 60 & score <= 70) {
    "D"
  }else{
    "F"
  }
}

# My refactored Solution 1
get_grade <- function(a, b, c) {
  score = (a + b + c) / 3
  
  if (score >= 90) {
    "A"
  }else if (score >= 80) {
    "B"
  }else if (score >= 70) {
    "C"
  }else if (score >= 60) {
    "D"
  }else{
    "F"
  }
}

# Tests
test_that('should return an A', {
  expect_equal(get_grade(95, 90, 93), 'A')
  expect_equal(get_grade(100, 85, 96), 'A')
  expect_equal(get_grade(92, 93, 94), 'A')
  expect_equal(get_grade(100, 100, 100), 'A')
})
test_that('should return a B', {
  expect_equal(get_grade(70, 70, 100), 'B')
  expect_equal(get_grade(82, 85, 87), 'B')
  expect_equal(get_grade(84, 79, 85), 'B')
})
test_that('should return a C', {
  expect_equal(get_grade(70, 70, 70), 'C')
  expect_equal(get_grade(75, 70, 79), 'C')
  expect_equal(get_grade(60, 82, 76), 'C')
})
test_that('should return a D', {
  expect_equal(get_grade(65, 70, 59), 'D')
  expect_equal(get_grade(66, 62, 68), 'D')
  expect_equal(get_grade(58, 62, 70), 'D')
})
test_that('should return an F', {
  expect_equal(get_grade(44, 55, 52), 'F')
  expect_equal(get_grade(48, 55, 52), 'F')
  expect_equal(get_grade(58, 59, 60), 'F')
  expect_equal(get_grade(0, 0, 0), 'F')
})