# Will there be enough space?
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu


# Solution 1
def enough(cap, on, wait):
    n = cap - on - wait
    return abs(n) if n < 0 else 0

# Solution 2 using max to return higher value (more concise)
def enough(cap, on , wait):
    return max(0, on + wait - cap)


# Tests
import codewars_test as test
from solution import enough

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(enough(10, 5, 5), 0)
        test.assert_equals(enough(100, 60, 50), 10)
        test.assert_equals(enough(20, 5, 5), 0)