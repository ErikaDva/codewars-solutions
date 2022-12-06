# Grasshopper - Personalized Message
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution using ifelse()
greet <- function(name, owner){
  ifelse(name == owner, "Hello boss", "Hello guest")
}

# Solution using if()
greet <- function(name, owner){
  if (name == owner){
    "Hello boss"
    }else{
    "Hello guest"
  }
}


# Tests
test_that('Basic tests', {
  expect_equal(greet('Daniel', 'Daniel'), 'Hello boss')
  expect_equal(greet('Greg', 'Daniel'), 'Hello guest')
})