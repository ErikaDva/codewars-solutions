# Grasshopper - Summation
# Language: Python
# Difficulty: 8 kyu

# Solution 1
def summation(num):
    return sum(list(range(1, num + 1, 1)))

# Solution 2 (same, but more concise)
def summation(num):
    return sum(range(1, num + 1))
    
# Tests
import codewars_test as test
from solution import summation

@test.describe('Fixed tests')
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(summation(1), 1)
        test.assert_equals(summation(8), 36)
        test.assert_equals(summation(22), 253)
        test.assert_equals(summation(100), 5050)
        test.assert_equals(summation(213), 22791)