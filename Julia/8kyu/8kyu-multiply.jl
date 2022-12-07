# Multiply
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

module Solution
  export multiply
  function multiply(a, b)
    a * b
  end
end


# Tests
using FactCheck
using .Solution

facts("multiply") do
  context("fixed tests") do
    @fact multiply(2, 2) --> 4
    @fact multiply(1, 1) --> 1
    @fact multiply(3, 2) --> 6
  end
end