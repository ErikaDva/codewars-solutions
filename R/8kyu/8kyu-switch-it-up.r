# Switch it Up!
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

switch_it_up <- function(number){
  switch(
    as.character(number),
    "0" = "Zero",
    "1" = "One",
    "2" = "Two",
    "3" = "Three",
    "4" = "Four",
    "5" = "Five",
    "6" = "Six",
    "7" = "Seven",
    "8" = "Eight",
    "9" = "Nine"
  )
}


# Tests
test_that('Basic tests', {
  expect_equal(switch_it_up(0), "Zero")
  expect_equal(switch_it_up(9), "Nine")
})