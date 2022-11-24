# Multiply
# Difficulty: 8 kyu

# Task: fix the code
def multiply(a, b):
    a * b

# Solution
def multiply(a, b):
    return a * b

# Tests

import codewars_test as test
from solution import multiply

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(multiply(2,1), 2)