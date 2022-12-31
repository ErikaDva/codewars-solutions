# Even or Odd
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1
module Solution
  export evenOrOdd
  function evenOrOdd(number)
    ifelse(number % 2 == 0, "Even", "Odd")
  end
end

# Solution 2 (can also use isodd() and reverse the outcomes)
module Solution
  export evenOrOdd
  function evenOrOdd(number)
    iseven(number) ? "Even" : "Odd"
  end
end


# Tests
using FactCheck
facts("Basic Tests") do
  @fact Solution.evenOrOdd(2) --> "Even"
  @fact Solution.evenOrOdd(1) --> "Odd"
  @fact Solution.evenOrOdd(0) --> "Even"
  @fact Solution.evenOrOdd(7) --> "Odd"
  @fact Solution.evenOrOdd(-2) --> "Even"
  @fact Solution.evenOrOdd(-1) --> "Odd"
end