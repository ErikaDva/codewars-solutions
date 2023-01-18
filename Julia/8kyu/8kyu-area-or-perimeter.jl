# Area or Perimeter
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1
module Solution
  export areaOrPerimeter
  function areaOrPerimeter(l, w)
    ifelse(l == w, l * w, (l + w) * 2)
  end
end

# Solution 2 (Julia syntax)
module Solution
  export areaOrPerimeter
  function areaOrPerimeter(l, w)
    l == w ? l * w : (l + w) * 2
  end
end


# Tests
using FactCheck
facts("Basic tests") do
  @fact Solution.areaOrPerimeter(4, 4) --> 16
  @fact Solution.areaOrPerimeter(6, 10) --> 32
end