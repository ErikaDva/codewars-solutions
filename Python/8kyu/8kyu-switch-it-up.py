# Switch it Up!
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def switch_it_up(number):
    dict = {0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"}
    return dict.get(number, "ERROR: Invalid input value. Must be netweem 0-9.")

# Alternative Solution 2 (more concise)
def switch_it_up(number):
    return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]


# Tests
import codewars_test as test
from solution import switch_it_up

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(switch_it_up(0), "Zero")
        test.assert_equals(switch_it_up(9), "Nine")