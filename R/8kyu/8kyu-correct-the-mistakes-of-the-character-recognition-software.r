# Correct the mistakes of the character recognition software
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

# Solution 1 using gsub()
correct <- function(string){
  s <- gsub("5", "S", string)
  o <- gsub("0", "O", s)
  gsub("1", "I", o)
}

# Alternative Solution 2 using base chartr(old, new, x)
correct <- function(string){
  chartr("501", "SOI", string)
}


# Tests
test_that('Basic tests', {
  expect_equal(correct("L0ND0N"),"LONDON")
  expect_equal(correct("DUBL1N"),"DUBLIN")
  expect_equal(correct("51NGAP0RE"),"SINGAPORE")
  expect_equal(correct("BUDAPE5T"),"BUDAPEST")
  expect_equal(correct("PAR15"),"PARIS")
})