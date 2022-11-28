# Remove exclamation marks
# Language: R
# Difficulty: 8 kyu

remove_exclamation_marks <- function(s){
  gsub("!", "", s)
}


# Tests
test_that('Basic tests', {
  expect_equal(remove_exclamation_marks("Hello World!"), "Hello World")
  expect_equal(remove_exclamation_marks("Hello World!!!"), "Hello World")
  expect_equal(remove_exclamation_marks("Hi! Hello!"), "Hi Hello")
  expect_equal(remove_exclamation_marks(""), "")
  expect_equal(remove_exclamation_marks("Oh, no!!!"), "Oh, no")
})