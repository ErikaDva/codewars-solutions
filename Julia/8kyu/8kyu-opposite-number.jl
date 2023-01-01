# Opposite number
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

module Solution
  export opposite
  function opposite(number)
    -number
  end
end


# Tests
using FactCheck
facts("Fixed tests") do
  @fact Solution.opposite(-1) --> 1
  @fact Solution.opposite(14) --> -14
  @fact Solution.opposite(-34) --> 34
end