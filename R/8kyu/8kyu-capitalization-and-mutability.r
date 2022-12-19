# Capitalization and Mutability
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

# Solution 1 - substr() and toupper()
capitalize_word <- function(word){
  substr(word, 1, 1) <- toupper(substr(word, 1, 1))
  word
}

# Solution 2 - using gsub()
capitalize_word <- function(word){
  gsub("(^[[:alpha:]])", "\\U\\1", word, perl = TRUE)
}

# Solution 3 - using str_to_title() from stringr package
capitalize_word <- function(word){
  stringr::str_to_title(word)
}

# Solution 4 - using str_replace from stringr package
capitalize_word <- function(word){
  stringr::str_replace(word, "([[:alpha:]])", toupper)
}


# Tests
test_that('Basic tests', {
  expect_equal(capitalize_word('word'), 'Word')
  expect_equal(capitalize_word('i'), 'I')
  expect_equal(capitalize_word('glasswear'), 'Glasswear')
})