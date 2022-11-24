# Return strings
# Difficulty: 8 kyu

# Solution 1

def greet(name):
    return "Hello, " + name + " how are you doing today?"

# Solution 2
def greet(name):
    return 'Hello, {} how are you doing today?'.format(name)

# Solution 3
def greet(name):
    return f'Hello, {name} how are you doing today?'


# Tests
import codewars_test as test
from solution import greet

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(greet('Ryan'), "Hello, Ryan how are you doing today?")
        test.assert_equals(greet('Shingles'), "Hello, Shingles how are you doing today?")
