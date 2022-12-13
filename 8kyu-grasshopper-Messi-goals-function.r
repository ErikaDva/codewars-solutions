# Grasshopper - Messi goals function
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

goals <- function(la_liga_goals, copa_del_rey_goals, champions_league_goals) {
  la_liga_goals + copa_del_rey_goals + champions_league_goals
}


# Tests
test_that("fixed tests", {
  expect_equal(goals(0, 0, 0), 0)
  expect_equal(goals(43, 10, 5), 58)
})