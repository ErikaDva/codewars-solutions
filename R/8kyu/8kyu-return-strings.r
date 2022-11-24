# Return strings
# Difficulty: 8 kyu

greet <- function(name) {
    paste("Hello,", name, "how are you doing today?")
}


# Test

test_that("example test cases", {
    expect_equal(greet('Ryan'), 'Hello, Ryan how are you doing today?')
})
