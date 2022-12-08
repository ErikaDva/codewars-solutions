# Twice as old
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def twice_as_old(dad_years_old, son_years_old):
    return abs(son_years_old * 2 - dad_years_old)


# Tests
import codewars_test as test
from solution import twice_as_old

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(twice_as_old(36,7) , 22)
        test.assert_equals(twice_as_old(55,30) , 5)
        test.assert_equals(twice_as_old(42,21) , 0)
        test.assert_equals(twice_as_old(22,1) , 20)
        test.assert_equals(twice_as_old(29,0) , 29)