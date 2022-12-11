-- Third Angle of a Triangle
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu


--# write your SQL statement here: 
-- you are given a table 'otherangle' with columns 'a' and 'b'.
-- return a table with these columns and your result in a column named 'res'.

SELECT a, b, (180 - a - b) AS res
FROM otherangle;


-- Tests
DB[:otherangle].multi_insert([
  {a: 1, b: 1}, {a: 42, b: 77}, {a: 81, b: 27}, {a: 45, b: 60}
])
  
results = run_sql

describe :columns do
   it "should return 3 columns" do
    expect(results.columns.count).to eq 3
   end
end

describe :column_names do
   it "should match column names" do
     expect(results.columns[0].to_s).to eq "a" 
     expect(results.columns[1].to_s).to eq "b" 
     expect(results.columns[2].to_s).to eq "res" 
   end
end

compare_with expected do end