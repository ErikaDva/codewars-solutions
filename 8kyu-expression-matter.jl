# Expression Matter
# Language: Julia
# Version 1.0
# Difficulty: 8 kyu

function expressionsmatter(a, b, c)
    return max(a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c)
end


# Tests
using FactCheck

facts("Small values") do
    @fact expressionsmatter(2, 1, 2) --> 6
    @fact expressionsmatter(2, 1, 1) --> 4
    @fact expressionsmatter(1, 1, 1) --> 3
    @fact expressionsmatter(1, 2, 3) --> 9
    @fact expressionsmatter(1, 3, 1) --> 5
    @fact expressionsmatter(2, 2, 2) --> 8
end
facts("Medium values") do
    @fact expressionsmatter(5, 1, 3) --> 20
    @fact expressionsmatter(3, 5, 7) --> 105
    @fact expressionsmatter(5, 6, 1) --> 35
    @fact expressionsmatter(1, 6, 1) --> 8
    @fact expressionsmatter(2, 6, 1) --> 14
    @fact expressionsmatter(6, 7, 1) --> 48
end
facts("Mixed values") do
    @fact expressionsmatter(2, 10, 3) --> 60
    @fact expressionsmatter(1, 8, 3) --> 27
    @fact expressionsmatter(9, 7, 2) --> 126
    @fact expressionsmatter(1, 1, 10) --> 20
    @fact expressionsmatter(9, 1, 1) --> 18
    @fact expressionsmatter(10, 5, 6) --> 300
    @fact expressionsmatter(1, 10, 1) --> 12
end