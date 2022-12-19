# My head is at the wrong end!
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def fix_the_meerkat(arr):
    return arr[::-1]

# Solution 2
def fix_the_meerkat(arr):
    arr.reverse()
    return arr


# Tests
import codewars_test as test
from solution import fix_the_meerkat

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(fix_the_meerkat(["tail", "body", "head"]), ["head", "body", "tail"])
        test.assert_equals(fix_the_meerkat(["tails", "body", "heads"]), ["heads", "body", "tails"])
        test.assert_equals(fix_the_meerkat(["bottom", "middle", "top"]), ["top", "middle", "bottom"])
        test.assert_equals(fix_the_meerkat(["lower legs", "torso", "upper legs"]), ["upper legs", "torso", "lower legs"])
        test.assert_equals(fix_the_meerkat(["ground", "rainbow", "sky"]), ["sky", "rainbow", "ground"])