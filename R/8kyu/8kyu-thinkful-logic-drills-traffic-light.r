# Thinkful - Logic Drills: Traffic light
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

update_light <- function(current) {
  if (current == "green") {
    "yellow"
  } else if (current == "yellow") {
    "red"
  } else {
    "green"
  }
}


# Tests
test_that('Basic tests', {
  expect_equal(update_light('green'), 'yellow')
  expect_equal(update_light('yellow'), 'red')
  expect_equal(update_light('red'), 'green')
})