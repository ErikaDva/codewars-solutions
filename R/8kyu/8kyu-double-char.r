# Double Char
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

# Solution 1 using strrep() for replication
double_char <- function(str){
  paste(strrep(unlist(strsplit(str, NULL)), 2), collapse = "")
}

# Solution 2 using rep() for replication
double_char <- function(str){
  paste(rep(strsplit(str, NULL)[[1]], each = 2), collapse = "") 
}


# Tests
test_that('Basic tests', {
  expect_equal(double_char("abcd"), "aabbccdd")
  expect_equal(double_char("Adidas"), "AAddiiddaass")
  expect_equal(double_char("1337"), "11333377")
  expect_equal(double_char("illuminati"), "iilllluummiinnaattii")
  expect_equal(double_char("123456"), "112233445566")
  expect_equal(double_char("%^&*("), "%%^^&&**((")
})