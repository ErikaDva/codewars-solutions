-- Reversed Strings
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- you are given a table 'solution' with column 'str', 
-- return a table with column 'str' and your result in a column named 'res'.

SELECT str, REVERSE(str) AS res
FROM solution;

-- Tests
DB[:solution].multi_insert([
  {str: "world"}, {str: "hello"}, {str: ""}, {str: "h"}
])

results = run_sql

describe :columns do
   it "should return 2 columns" do
    expect(results.columns.count).to eq 2
   end
end

describe :column_names do
   it "should match column names" do
     expect(results.columns[0].to_s).to eq "str" 
     expect(results.columns[1].to_s).to eq "res" 
   end
end

compare_with expected do end