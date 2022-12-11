-- Count Odd Numbers below n
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu


-- # write your SQL statement here: 
-- you are given a table 'oddcount' with column 'n', 
-- return a table with column 'n' and your result in a column named 'res'.


-- Solution 1
SELECT n, CAST(n / 2 AS INTEGER) AS res
FROM oddcount;

-- Refactored Solution 1
SELECT n, n / 2 AS res 
FROM oddcount;


-- Tests
DB[:oddcount].multi_insert([
  {n: 15}, 
  {n: 15023}
])
  
results = run_sql

describe :columns do
   it "should return 2 columns" do
    expect(results.columns.count).to eq 2
   end
end

describe :column_names do
   it "should match column names" do
     expect(results.columns[0].to_s).to eq "n" 
     expect(results.columns[1].to_s).to eq "res" 
   end
end

compare_with expected do end