# What's the real floor?
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def get_real_floor(n):
    if n > 0 and n < 13:
        return n - 1
    elif n >= 13:
        return n - 2
    else:
        return n


# Tests
import codewars_test as test
from solution import get_real_floor

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(get_real_floor(1), 0)
        test.assert_equals(get_real_floor(5), 4)
        test.assert_equals(get_real_floor(15), 13)