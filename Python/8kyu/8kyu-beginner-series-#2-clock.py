# Beginner Series #2 Clock
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def past(h, m, s):
    return (h * 60 * 60 * 1000) + (m * 60 * 1000) + (s * 1000)

# Solution 2 (more concise)
def past(h, m, s):
    return (h * 3600 + m * 60 + s) * 1000


# Tests
import codewars_test as test
from solution import past

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(past(0,1,1),61000)
        test.assert_equals(past(1,1,1),3661000)
        test.assert_equals(past(0,0,0),0)
        test.assert_equals(past(1,0,1),3601000)
        test.assert_equals(past(1,0,0),3600000)