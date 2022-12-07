# Basic Sort and Star
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def two_sort(array):
    array.sort()
    return "***".join(array[0])

# Refactored Solution 1
def two_sort(array):
    return "***".join(min(array))

# My initial solution (not submitted)
def two_sort(array):
    array.sort()
    result = ""
    for letter in array[0]:
        result += letter + "***"
    return result[:-3]


# Tests
import codewars_test as test
from solution import two_sort

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]), 'b***i***t***c***o***i***n' )
        test.assert_equals(two_sort(["turns", "out", "random", "test", "cases", "are", "easier", "than", "writing", "out", "basic", "ones"]), 'a***r***e')
        test.assert_equals(two_sort(["lets", "talk", "about", "javascript", "the", "best", "language"]), 'a***b***o***u***t')
        test.assert_equals(two_sort(["i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day"]), 'c***o***d***e')
        test.assert_equals(two_sort(["Lets", "all", "go", "on", "holiday", "somewhere", "very", "cold"]), 'L***e***t***s')