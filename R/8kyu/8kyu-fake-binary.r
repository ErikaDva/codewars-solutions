# Fake Binary
# 8 kyu


# Solution
fake_bin <- function(x){
  split_x = unlist(strsplit(x, NULL))
  as.character(paste(ifelse(split_x < 5, 0, 1), collapse = ""))
}

# Alternative solution using gsub(pattern, replacement, x, ...)
fake_bin <- function(x){
  x <- gsub('[0-4]', 0, x)
  x <- gsub('[5-9]', 1, x)
  return(x) 
}

# Using base chartr(old, new, x)
fake_bin <- function(x){
  chartr("123456789", "000011111", x)
}

# Test

test_that('Basic tests', {
  expect_equal(fake_bin('45385593107843568'), '01011110001100111');
  expect_equal(fake_bin('509321967506747'), '101000111101101'); 
  expect_equal(fake_bin('366058562030849490134388085'), '011011110000101010000011011');
})