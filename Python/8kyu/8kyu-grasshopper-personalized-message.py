# Grasshopper - Personalized Message
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def greet(name, owner):
    return "Hello boss" if name == owner else "Hello guest"


# Tests
import codewars_test as test
from solution import greet

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(greet('Daniel', 'Daniel'), 'Hello boss')
        test.assert_equals(greet('Greg', 'Daniel'), 'Hello guest')