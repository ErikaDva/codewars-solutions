# Filter out the geese
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

goose_filter <- function(birds){
  geese = c("African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher")
  birds[!birds %in% geese]
}


# Tests
test_that('Basic tests', {
  expect_equal(goose_filter(c("Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish")),c("Mallard", "Hook Bill", "Crested", "Blue Swedish"))
  expect_equal(goose_filter(c("Mallard", "Barbary", "Hook Bill", "Blue Swedish", "Crested")),c("Mallard", "Barbary", "Hook Bill", "Blue Swedish", "Crested"))
  expect_equal(goose_filter(c("African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher")),character())
})