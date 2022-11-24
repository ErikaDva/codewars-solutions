# Remove First and Last Character
# Difficulty: 8 kyu

# Solution 1

removeChar <- function(str){
      substr(str, 2, nchar(str)-1)  
}

# Solution with gsub
removeChar <- function(str){
    gsub('^.|.$', '', str)
}


# Test

test_that('basic tests', {
  expect_equal(removeChar('eloquent'), 'loquen')
  expect_equal(removeChar('country'), 'ountr')
  expect_equal(removeChar('person'), 'erso')
  expect_equal(removeChar('place'), 'lac')
})