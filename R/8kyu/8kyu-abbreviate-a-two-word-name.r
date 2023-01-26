# Abbreviate a Two Word Name
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution 1
abbrev_name <- function(name){
  toupper(paste(substr(unlist(strsplit(name, " ")), 1, 1), collapse = "."))
}

# Descsriptive Solution 1
abbrev_name <- function(name){
    split_name = unlist(strsplit(name, " ")) # split the name into two strings
    initials = substr(split_name, 1, 1) # extract the first character of each string
    toupper(paste(initials, collapse = ".")) # ensure capitalization and collapse with "."
}


# Tests
test_that('Basic tests', {
    expect_equal(abbrev_name("Sam Harris"), "S.H")
    expect_equal(abbrev_name("Patrick Feenan"), "P.F")
    expect_equal(abbrev_name("Evan Cole"), "E.C")
    expect_equal(abbrev_name("P Favuzzi"), "P.F")
    expect_equal(abbrev_name("David Mendieta"), "D.M")
})