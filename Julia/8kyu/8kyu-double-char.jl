# Double Char
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function doublechar(str)
  join(i^2 for i in str)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact doublechar("String") --> "SSttrriinngg"
    @fact doublechar("Hello World") --> "HHeelllloo  WWoorrlldd"
    @fact doublechar("1234!_ ") --> "11223344!!__  "
  end
end