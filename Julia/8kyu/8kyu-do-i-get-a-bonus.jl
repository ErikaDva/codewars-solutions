# Do I get a bonus?
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Tests

function bonustime(salary::Int, bonus::Bool)::String
    string("£", ifelse(bonus, salary * 10, salary))
end


# Tests
using FactCheck

facts("Basic tests") do
    @fact bonustime(10000, true) --> "£100000"
    @fact bonustime(25000, true) --> "£250000"
    @fact bonustime(10000, false) --> "£10000"
    @fact bonustime(60000, false) --> "£60000"
    @fact bonustime(2, true) --> "£20"
    @fact bonustime(78, false) --> "£78"
    @fact bonustime(67890, true) --> "£678900"
end