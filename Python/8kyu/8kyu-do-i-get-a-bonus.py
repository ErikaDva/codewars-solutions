# Do I get a bonus?
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def bonus_time(salary, bonus):
    return "$" + str(salary * 10 if bonus else salary)

# Solution 2
def bonus_time(salary, bonus):
    return "${}".format(salary * 10 if bonus else salary)


# Tests
import codewars_test as test
from solution import bonus_time

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(bonus_time(10000, True), '$100000')
        test.assert_equals(bonus_time(25000, True), '$250000')
        test.assert_equals(bonus_time(10000, False), '$10000')
        test.assert_equals(bonus_time(60000, False), '$60000')
        test.assert_equals(bonus_time(2, True), '$20')
        test.assert_equals(bonus_time(78, False), '$78')
        test.assert_equals(bonus_time(67890, True), '$678900')