# Convert a String to a Number!
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function stringtonumber(str)
    parse(Int64, str)
end


# Tests
using FactCheck

facts("stringtonumber") do
  context("should work for the examples") do
    @fact stringtonumber("1234") --> 1234
    @fact stringtonumber("605") --> 605
    @fact stringtonumber("1405") --> 1405
    @fact stringtonumber("-7") --> -7
  end
end