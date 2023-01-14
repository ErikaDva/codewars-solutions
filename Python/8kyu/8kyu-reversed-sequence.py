# Reversed sequence
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def reverse_seq(n):
    return list(range(n, 0, -1))


# Tests
import codewars_test as test
from solution import reverse_seq

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(reverse_seq(5),[5,4,3,2,1])