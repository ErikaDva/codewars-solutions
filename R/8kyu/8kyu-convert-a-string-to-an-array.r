# Convert a string to an array
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

string_to_array <- function(s){
  unlist(strsplit(s, " "))
}


# Tests
test_that('Basic tests', {
  expect_equal(string_to_array("Robin Singh"), c("Robin", "Singh"))
  expect_equal(string_to_array("CodeWars"), c("CodeWars"))
  expect_equal(string_to_array("I love arrays they are my favorite"), c("I", "love", "arrays", "they", "are", "my", "favorite"))
  expect_equal(string_to_array("1 2 3"), c("1", "2", "3"))
  expect_equal(string_to_array(""), character())
})