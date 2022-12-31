# Are You Playing Banjo?
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution 1
are_you_playing_banjo <- function(name){
  name_split <- unlist(strsplit(name, NULL))
  ifelse(toupper(name_split[1]) == "R", paste(name, "plays banjo"), paste(name, "does not play banjo"))
}

# Solution 2 using grepl() 
are_you_playing_banjo <- function(name){
  ifelse(grepl("^(R|r)", name), paste(name, "plays banjo"), paste(name, "does not play banjo"))
}

# Another grepl variation useful when more variables
grepl("^(S|T|R|I|N|G)", name, ignore.case = TRUE)


# Tests
test_that('Basic tests', {
  expect_equal(are_you_playing_banjo("Adam"), "Adam does not play banjo")
  expect_equal(are_you_playing_banjo("Paul"), "Paul does not play banjo")
  expect_equal(are_you_playing_banjo("Ringo"), "Ringo plays banjo");
  expect_equal(are_you_playing_banjo("bravo"), "bravo does not play banjo")
  expect_equal(are_you_playing_banjo("rolf"), "rolf plays banjo")
})