# Grasshopper - Terminal game combat function
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def combat(health, damage):
    return 0 if health - damage < 0 else health - damage

# Solution 2
def combat(health, damage):
    return max(0, health - damage)


# Tests
import codewars_test as test
from solution import combat

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():        
        test.assert_equals(combat(100, 5), 95)
        test.assert_equals(combat(83, 16), 67)
        test.assert_equals(combat(20, 30), 0)