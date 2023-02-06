# Vowel Count
# Language: R
# Version: 3.4.1
# Difficulty: 7 kyu

get_count <- function(input_str){
  nchar(gsub("[^aeiou]", "", input_str, ignore.case = TRUE))
}


# Tests
test_that("Example Tests", {
  expect_equal(get_count("abracadabra"), 5)
  expect_equal(get_count(""), 0)
  expect_equal(get_count("pear tree"), 4)
  expect_equal(get_count("o a kak ushakov lil vo kashu kakao"), 13)
})