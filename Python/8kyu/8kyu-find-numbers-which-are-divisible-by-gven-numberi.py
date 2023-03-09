# Find numbers which are divisible by given number
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def divisible_by(numbers, divisor):
    return list(filter(lambda n: (n % divisor == 0), numbers))

# Solution 2
def divisible_by(numbers, divisor):
    return [n for n in numbers if n % divisor == 0]


# Tests
import codewars_test as test
from solution import divisible_by

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(divisible_by([1,2,3,4,5,6], 2), [2,4,6])
        test.assert_equals(divisible_by([1,2,3,4,5,6], 3), [3,6])
        test.assert_equals(divisible_by([0,1,2,3,4,5,6], 4), [0,4])
        test.assert_equals(divisible_by([0], 4), [0])
        test.assert_equals(divisible_by([1,3,5], 2), [])
        test.assert_equals(divisible_by([0,1,2,3,4,5,6,7,8,9,10], 1), [0,1,2,3,4,5,6,7,8,9,10])