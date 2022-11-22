# Is he gonna survive?
# Difficulty: 8 kyu

# Solution 1

def hero(bullets, dragons):
    return True if bullets / 2 >= dragons else False

# Solution 2 (more concise)

def hero(bullets, dragons):
    return bullets >= dragons * 2
# OR
def hero(bullets, dragons):
    return bullets /2 <= dragons

# Test

import codewars_test as test
from solution import hero

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(hero(10, 5), True)
        test.assert_equals(hero(7, 4), False)
        test.assert_equals(hero(4, 5), False)
        test.assert_equals(hero(100, 40), True)
        test.assert_equals(hero(1500, 751), False)
        test.assert_equals(hero(0, 1), False)
