# Well of Ideas - Easy Version
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

well <- function(x){
  good = length(x[which(x == "good")])
  
  if (good > 0 & good <= 2){
    "Publish!"
  }else if (good > 2){
    "I smell a series!"
  }else{
    "Fail!"
  }
}


# Tests
test_that('Basic tests', {
  expect_equal(well(c('bad', 'bad', 'bad')), 'Fail!')
  expect_equal(well(c('good', 'bad', 'bad', 'bad', 'bad')), 'Publish!')
  expect_equal(well(c('good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good')), 'I smell a series!')
})


ifelse(!'good'%in%x,'Fail!',ifelse(sum(x=='good')>2,'I smell a series!','Publish!'))