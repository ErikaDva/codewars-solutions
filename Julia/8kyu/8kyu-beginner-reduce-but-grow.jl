# Beginner - Reduce but Grow
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1 using prod()
module Solution
  export grow
  
  function grow(x::Vector{Int}) :: Int
    prod(x)
  end
end

# Solution 2 using reduce()
module Solution
  export grow
  
  function grow(x::Vector{Int}) :: Int
    reduce(*, x)
  end
end


# Tests
using FactCheck
using .Solution

facts("Example tests") do
  @fact grow([1, 2, 3]) --> 6
  @fact grow([4, 1, 1, 1, 4]) --> 16 
  @fact grow([2, 2, 2, 2, 2, 2]) --> 64 
end