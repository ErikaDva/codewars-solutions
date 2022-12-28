-- Get Nth Even Number
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- you are given a table 'ntheven' with column 'n', 
-- return a table with column 'n' and your result in a column named 'res'

SELECT n, n * 2 - 2 AS res 
FROM ntheven;


-- Tests
DB[:ntheven].multi_insert([
  {n: 1}, 
  {n: 2},
  {n: 3},
  {n: 100},
  {n: 1298734}
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