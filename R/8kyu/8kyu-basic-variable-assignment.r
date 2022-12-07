# Basic variable assignment
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

a = "code"
b = "wa.rs"
name = paste(a,b, sep='')


# Tests
test_that("example", {
  expect_equal(name, "codewa.rs")
})