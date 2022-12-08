# Thinkful - Logic Drills: Traffic light
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1 using if function
def update_light(current):
    if current == "green":
        return "yellow"
    elif current == "yellow":
        return "red"
    elif current == "red":
        return "green"
    else:
        return "Invalid traffic light color. Allowed input: green, yellow or red"

# Solution 2 using dictionary to search (more concise)
def update_light(current):
    return {"green": "yellow", "yellow": "red", "red": "green"}.get(current, "ERROR: Invalid input value. Must be green, yellow or red.")


# Tests
import codewars_test as test
from solution import update_light

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(update_light('green'), 'yellow')
        test.assert_equals(update_light('yellow'), 'red')
        test.assert_equals(update_light('red'), 'green')