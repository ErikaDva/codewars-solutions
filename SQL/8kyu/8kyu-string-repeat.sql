-- String repeat
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- you are given a table 'repeatstr' with columns 'n' and 's', 
-- return a table with all columns and your result in a column named 'res'.

SELECT s, n, REPEAT(s,n) AS res
FROM repeatstr;


-- Tests
DB[:repeatstr].multi_insert([
  {n: 3, s: "*"}, {n: 5, s: "#"}, {n: 2, s: "ha "}
])
  
results = run_sql

describe :columns do
   it "should return 3 columns" do
    expect(results.columns.count).to eq 3
   end
end

describe :column_names do
   it "should match column names" do
     expect(results.columns[0].to_s).to eq "s" 
     expect(results.columns[1].to_s).to eq "n" 
     expect(results.columns[2].to_s).to eq "res" 
   end
end

compare_with expected do end