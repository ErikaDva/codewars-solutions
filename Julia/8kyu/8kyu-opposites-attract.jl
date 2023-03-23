# Opposites Attract
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

module Solution
  export lovefunc
  
  function lovefunc(flower1, flower2)
    mod(flower1, 2) != mod(flower2, 2)
  end
end


# Tests
using FactCheck
using .Solution

facts("Sample Tests") do
  @fact lovefunc(1,4) --> true
  @fact lovefunc(2,2) --> false
  @fact lovefunc(0,1) --> true
  @fact lovefunc(0,0) --> false
end