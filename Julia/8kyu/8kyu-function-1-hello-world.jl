# Function 1 - hello world
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Tests

module Solution
  export greet

  function greet()
    return "hello world!"
  end

end


# Tests
using FactCheck
using .Solution

facts("Testing") do
  @fact greet() --> "hello world!"
end