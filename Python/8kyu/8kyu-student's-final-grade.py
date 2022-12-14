# Student's Final Grade
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def final_grade(exam, projects):
    if exam > 90 or projects > 10:
        return 100
    elif exam > 75 and projects >= 5:
        return 90
    elif exam > 50 and projects >= 2:
        return 75
    else:
        return 0

# Refactored Solution 1
def final_grade(exam, projects):
    if exam > 90 or  projects > 10: return 100
    if exam > 75 and projects >= 5: return 90
    if exam > 50 and projects >= 2: return 75
    return 0


# Tests
import codewars_test as test
from solution import final_grade

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(final_grade(100, 12), 100)
        test.assert_equals(final_grade(85, 5), 90)