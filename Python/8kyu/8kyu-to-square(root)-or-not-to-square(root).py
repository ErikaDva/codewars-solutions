# To square(root) or not to square(root)
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution using math
import math

def square_or_square_root(arr):
    return [int(math.sqrt(x)) if math.sqrt(x) == int(math.sqrt(x)) else x ** 2 for x in arr]

# Solution 2
def square_or_square_root(arr):
    return [x ** 0.5 if (x ** 0.5).is_integer() else x ** 2 for x in arr]

# Solution 3
def square_or_square_root(arr):
    return [n ** 2 if n ** 0.5 % 1 else n ** 0.5 for n in arr]


# Tests
import codewars_test as test
from solution import square_or_square_root
 
@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        tests = [
            [[4, 3, 9, 7, 2, 1 ], [2, 9, 3, 49, 4, 1]],
            [[100, 101, 5, 5, 1, 1], [10, 10201, 25, 25, 1, 1]],
            [[1, 2, 3, 4, 5, 6], [1, 4, 9, 2, 25, 36]],
        ]
        
        for inp, exp in tests:
            test.assert_equals(square_or_square_root(inp), exp)