# Powers of 2
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def powers_of_two(n):
    return [2 ** x for x in range(n + 1)]


# Tests
import codewars_test as test
from solution import powers_of_two

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(powers_of_two(0), [1])
        test.assert_equals(powers_of_two(1), [1, 2])
        test.assert_equals(powers_of_two(4), [1, 2, 4, 8, 16])