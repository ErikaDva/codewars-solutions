-- Grasshopper - Messi goals function
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- A table goals with columns la_liga_goals, copa_del_rey_goals, and champions_league_goals.
-- Return a table with a column, res.

SELECT (la_liga_goals + copa_del_rey_goals + champions_league_goals) AS res
FROM goals;


-- Tests
DB[:goals].multi_insert [
  {la_liga_goals: 0, copa_del_rey_goals: 0, champions_league_goals: 0},
  {la_liga_goals: 43, copa_del_rey_goals: 10, champions_league_goals: 5}
]

compare_with expected do end