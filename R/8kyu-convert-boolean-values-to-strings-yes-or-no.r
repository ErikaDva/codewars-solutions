# Convert boolean values to strings 'Yes' or 'No'
# Difficulty: 8 kyu

# Solution 1
bool_to_word <- function(bool){
  if (bool == T){
    return("Yes")
  }else{
    return("No")
  }
}

# Solution 2 (more concise)
bool_to_word <- function(bool){
  ifelse(bool, "Yes", "No")
}


# Test

test_that('Basic tests', {
  expect_equal(bool_to_word(TRUE), 'Yes')
  expect_equal(bool_to_word(FALSE), 'No')
})
