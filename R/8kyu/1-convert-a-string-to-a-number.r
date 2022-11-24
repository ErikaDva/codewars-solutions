# Convert a String to a Number!

string_to_number <- function(x){
  x <- as.numeric(x)
  return(x)
}

# Test

test_that('Basic tests', {
  expect_equal(string_to_number("1234"), 1234)
  expect_equal(string_to_number("605"), 605)
  expect_equal(string_to_number("1405"), 1405)
  expect_equal(string_to_number("-7"), -7)
})
