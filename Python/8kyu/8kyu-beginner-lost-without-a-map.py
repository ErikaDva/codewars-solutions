# Beginner - Lost Without a Map
# Language: Python
# Difficulty: 8 kyu

def maps(a):
    return [i * 2 for i in a]

# Tests
import codewars_test as test
from solution import maps

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(maps([1, 2, 3]), [2, 4, 6])
        test.assert_equals(maps([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]), [0, 2, 4, 6, 8, 10, 12, 14, 16, 18])
        test.assert_equals(maps([]), [])