# Convert boolean values to strings 'Yes' or 'No'
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

module BoolWord
    export bool_to_word 
    function bool_to_word(boolean::Bool)::String
      ifelse(boolean::Bool, "Yes", "No")
    end
end


# Tests
using FactCheck
using .BoolWord


facts("Testing Boolean to Word") do
  @fact bool_to_word(true) --> "Yes"
  @fact bool_to_word(false) --> "No"
end