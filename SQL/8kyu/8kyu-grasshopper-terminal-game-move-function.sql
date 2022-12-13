-- Grasshopper - Terminal game move function
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- A table 'moves' with columns 'position' and 'roll'. 
-- Return a table with a column 'res'. 

SELECT (position + roll * 2) as res
FROM moves;


-- Tests
describe "Basic tests" do
  run_tests [
    [0, 4, 8],
    [3, 6, 15],
    [2, 5, 12]
  ]
end