-- Even or Odd
-- Language: SQL
-- Version: PostgreSQL 9.6, SQLite 3.2.8 & PostgreSQL 13.0
-- Difficulty: 8 kyu

-- A table numbers, with one column number.
-- Return a dataset with two columns: number and is_even,
-- where number contains the original input value, 
-- and is_even containing "Even" or "Odd" depending on number column values.

SELECT number, 
  CASE  WHEN number % 2 = 0 THEN 'Even'
        ELSE 'Odd' END
        AS is_even
FROM numbers


-- Tests
describe :numbers do
  it "sample tests" do
    numbers = DB[:numbers]
    numbers.delete()
    numbers.multi_insert([
      {:number => -100}, 
      {:number =>  -21}, 
      {:number =>   -2}, 
      {:number =>   -1}, 
      {:number =>    0}, 
      {:number =>    1}, 
      {:number =>    2}, 
      {:number =>   21}, 
      {:number =>  100}])
    
    result = run_sql
    actual_columns = result.columns
    expect(actual_columns).to eq([:number, :is_even]), "Columns in the returned dataset are not as expected"
    
    rows = result.to_a.sort_by { |row| row[:number] }
  
    expected = [{:number => -100, :is_even => "Even"},
                {:number =>  -21, :is_even => "Odd" },
                {:number =>   -2, :is_even => "Even"},
                {:number =>   -1, :is_even => "Odd" },
                {:number =>    0, :is_even => "Even"},
                {:number =>    1, :is_even => "Odd" },
                {:number =>    2, :is_even => "Even"},
                {:number =>   21, :is_even => "Odd" },
                {:number =>  100, :is_even => "Even"}]
    expect(rows).to eq(expected)
  end
end