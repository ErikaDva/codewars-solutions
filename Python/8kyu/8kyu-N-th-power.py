# N-th Power
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def index(array, n):
    return array[n]**n if n < len(array) else -1

# Tests
import codewars_test as test
from solution import index

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(index([1, 2, 3, 4],2),9)
        test.assert_equals(index([5, 6], 0), 1)
        test.assert_equals(index([1, 3, 10, 100],3),1000000)