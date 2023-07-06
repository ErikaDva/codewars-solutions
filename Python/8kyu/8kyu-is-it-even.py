# Is it even?
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def is_even(n): 
    return n % 2 == 0

# Tests
import codewars_test as test
from solution import is_even

@test.describe('Fixed Tests')
def fixed_tests():

    @test.it('Basic Test Cases')
    def basic_tests():
        test.assert_equals(is_even(0), True)
        test.assert_equals(is_even(0.5), False)
        test.assert_equals(is_even(1), False)
        test.assert_equals(is_even(2), True)
        test.assert_equals(is_even(-4), True)
        test.assert_equals(is_even(15), False)
        test.assert_equals(is_even(20), True)
        test.assert_equals(is_even(220), True)
        test.assert_equals(is_even(222222221), False)
        test.assert_equals(is_even(500000000), True)