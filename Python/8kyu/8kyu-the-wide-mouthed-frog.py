# The Wide-Mouthed frog!
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def mouth_size(animal): 
    return "small" if animal.lower() == "alligator" else "wide"


# Tests
import codewars_test as test
from solution import mouth_size

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(mouth_size("toucan"),"wide")
        test.assert_equals(mouth_size("ant bear"),"wide")
        test.assert_equals(mouth_size("alligator"),"small")
