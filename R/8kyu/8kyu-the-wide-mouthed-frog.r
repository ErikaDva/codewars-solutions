# The Wide-Mouthed frog!
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

mouth_size <- function(animal){
  ifelse(tolower(animal) == "alligator", "small", "wide")
}


# Tests
test_that('Basic tests', {
  expect_equal(mouth_size("toucan"),"wide")
  expect_equal(mouth_size("ant bear"),"wide")
  expect_equal(mouth_size("alligator"),"small")
})