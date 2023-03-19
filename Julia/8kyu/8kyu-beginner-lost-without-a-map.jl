# Beginner - Lost Without a Map
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

module Solution
export maps

function maps(x)
  x * 2
end

end


# Tests
using FactCheck

facts("Example tests") do
    @fact Solution.maps([1, 2, 3]) --> [2, 4, 6]
    @fact Solution.maps([4, 1, 1, 1, 4]) --> [8, 2, 2, 2, 8]
    @fact Solution.maps([2, 2, 2, 2, 2, 2]) --> [4, 4, 4, 4, 4, 4]
end