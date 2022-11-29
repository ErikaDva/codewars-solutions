# Function 1 - hello world
# Language: R
# Difficulty: 8 kyu

# Solution 1
greet <- function(){
  print("hello world!")
}

# Shortest solution, can add return() for best practices
greet <- function() {
  "hello world!"
}


# Tests
test_that("Test for hello world", {
  expect_equal(greet(), "hello world!")
  expect_equal(paste("someone", greet(), sep=" "), "someone hello world!")
})