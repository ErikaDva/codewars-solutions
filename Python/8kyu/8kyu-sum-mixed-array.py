# Sum Mixed Array
# Langugage: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def sum_mix(arr):
    return sum([int(n) for n in arr])

# Refactored Solution 1
def sum_mix(arr):
    return sum(int(n) for n in arr)

# Solution 2
def sum_mix(arr):
    return sum(map(int, arr))


# Tests
import codewars_test as test
from solution import sum_mix

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(sum_mix([9, 3, '7', '3']), 22)
        test.assert_equals(sum_mix(['5', '0', 9, 3, 2, 1, '9', 6, 7]), 42)
        test.assert_equals(sum_mix(['3', 6, 6, 0, '5', 8, 5, '6', 2,'0']), 41)
        test.assert_equals(sum_mix(['1', '5', '8', 8, 9, 9, 2, '3']), 45)
        test.assert_equals(sum_mix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]), 61)