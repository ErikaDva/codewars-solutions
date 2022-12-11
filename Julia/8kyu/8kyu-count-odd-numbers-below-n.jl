# Count Odd Numbers below n
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

module Solution
  export oddcount
  
  function oddcount(n)
    floor(n / 2)
  end
  
end


# Tests
using FactCheck
using .Solution

facts("Sample Tests") do
  context("Basic Tests") do
     @fact oddcount(15) --> 7
     @fact oddcount(15023) --> 7511
  end
end