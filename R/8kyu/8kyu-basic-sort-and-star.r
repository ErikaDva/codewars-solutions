# Basic Sort and Star
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution 1
two_sort <- function(s){
  sorted = sort(s, method = "radix")
  paste(unlist(strsplit(sorted[1], NULL)), collapse ="***")
}

# Refactored Solution 1
two_sort <- function(s){
  paste(unlist(strsplit(sort(s)[1], NULL)), collapse ="***")
}


# Tests
test_that('Basic tests', {
  expect_equal(two_sort(c("bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps")), 'b***i***t***c***o***i***n' );
  expect_equal(two_sort(c("turns", "out", "random", "test", "cases", "are", "easier", "than", "writing", "out", "basic", "ones")), 'a***r***e'); 
  expect_equal(two_sort(c("lets", "talk", "about", "javascript", "the", "best", "language")), 'a***b***o***u***t'); 
  expect_equal(two_sort(c("i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day")), 'c***o***d***e'); 
  expect_equal(two_sort(c("Lets", "all", "go", "on", "holiday", "somewhere", "very", "cold")), 'L***e***t***s'); 
})
