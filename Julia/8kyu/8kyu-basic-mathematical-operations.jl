# Basic Mathematical Operations
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1
function basic_op(op, v1, v2)
    eval(Meta.parse(string(v1, op, v2)))
end

# Solution 2
function basic_op(op, v1, v2)
    eval(Meta.parse("$v1 $op $v2"))
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact basic_op("+", 4, 7) --> 11
    @fact basic_op("-", 15, 18) --> -3
    @fact basic_op("*", 5, 5) --> 25
    @fact basic_op("/", 49, 7) --> 7
  end
end