-- Beginner Series #2 Clock
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- Return the time since midnight in milliseconds

SELECT (h * 3600 + m * 60 + s) * 1000 AS res 
FROM past;

-- Tests
DB[:past].multi_insert [
  {h: 0, m: 1, s: 1}, # --> 61000
  {h: 1, m: 1, s: 1}, # --> 3661000
  {h: 0, m: 0, s: 0}, # --> 0
  {h: 1, m: 0, s: 1}, # --> 3601000
  {h: 1, m: 0, s: 0}  # --> 3600000
]

compare_with expected