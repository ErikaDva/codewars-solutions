# MakeUpperCase
# Difficulty: 8 kyu

makeUpperCase <- function(s) {
  toupper(s)
}


# Test

test_that("test", {
  expect_equal(makeUpperCase("hello"), "HELLO");
})