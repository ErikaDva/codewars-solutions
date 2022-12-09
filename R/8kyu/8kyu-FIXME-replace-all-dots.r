# FIXME: Replace all dots
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Must escape "." becaseu it is a special notation denoting any character

# Solution 1
replace_dots <- function(s){
  gsub("\\.", "-", s)
}

# Solution 2
replace_dots <- function(s){
  gsub("[.]", "-", s)
}

# Solution 3
replace_dots <- function(s){
  gsub(".", "-", s, fixed = TRUE)
}


# Tests
test_that('Basic tests', {
  expect_equal(replace_dots(""), "")
  expect_equal(replace_dots("no dots"), "no dots")
  expect_equal(replace_dots("one.two.three"), "one-two-three")
  expect_equal(replace_dots("........"), "--------")
})