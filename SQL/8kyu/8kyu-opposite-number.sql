-- Opposite number
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- You will be given a table: "opposite", with a column: "number". 
-- Return a table with a column: "res".

SELECT -number AS res
FROM opposite;