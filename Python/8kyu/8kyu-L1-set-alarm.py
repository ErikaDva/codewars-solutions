# L1: Set Alarm
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def set_alarm(employed, vacation):
    return employed and vacation == False

# Refactored Solution 1
def set_alarm(employed, vacation):
    return employed and not vacation


# Tests
import codewars_test as test
from solution import set_alarm

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(set_alarm(True, True), False, "Fails when input is True, True")
        test.assert_equals(set_alarm(False, True), False, "Fails when input is False, True")
        test.assert_equals(set_alarm(False, False), False, "Fails when input is False, False")
        test.assert_equals(set_alarm(True, False), True, "Fails when input is True, False")