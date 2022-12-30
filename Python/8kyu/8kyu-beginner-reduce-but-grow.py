# Beginner - Reduce but Grow
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1

def grow(arr):
    result = 1
    for x in arr:
        result *= x
    return result

# Solution 2 using functools
from functools import reduce

def grow(arr):
    return reduce((lambda x, y: x * y), arr)

# Solution 3 using math
from math import prod

def grow(arr):
    return prod(arr)


# Tests
import codewars_test as test
from solution import grow

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        tests = [
            [6 , [1, 2, 3]],
            [16, [4, 1, 1, 1, 4]],
            [64, [2, 2, 2, 2, 2, 2]],
        ]
        
        for exp, inp in tests:
            test.assert_equals(grow(inp), exp)