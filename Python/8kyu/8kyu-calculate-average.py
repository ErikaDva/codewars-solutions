# Calculate average
# Language: Python
# Difficulty: 8 kyu

# Solution 1
def find_average(numbers):
    return 0 if len(numbers) == 0 else sum(numbers) / len(numbers)

# Refactored Solution 1
def find_average(numbers):
   return sum(numbers) / len(numbers)


# Tests
import codewars_test as test
from solution import find_average

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(find_average([1, 2, 3]), 2)