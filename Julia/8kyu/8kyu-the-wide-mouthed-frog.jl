# The Wide-Mouthed frog!
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1 (Julia specific)
function mouthsize(animal)
    lowercase(animal) == "alligator" ? "small" : "wide"
end

# Solution 2 (similar to R)
function mouthsize(animal)
    ifelse(lowercase(animal) == "alligator", "small", "wide")
  end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact mouthsize("toucan") --> "wide"
    @fact mouthsize("ant bear") --> "wide"
    @fact mouthsize("alligator") --> "small"
  end
end
