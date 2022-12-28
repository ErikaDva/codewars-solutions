# Get Nth Even Number
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def nth_even(n):
    return n * 2 - 2


# Tests
import codewars_test as test
from solution import nth_even

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(nth_even(1), 0)
        test.assert_equals(nth_even(2), 2)
        test.assert_equals(nth_even(3), 4)
        test.assert_equals(nth_even(100), 198)
        test.assert_equals(nth_even(1298734), 2597466)