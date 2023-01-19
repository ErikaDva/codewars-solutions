# Area or Perimeter
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def area_or_perimeter(l , w):
    return (l + w) * 2 if l != w else l * w

# Solution 2
def area_or_perimeter(l , w):
    return l * w if l == w else (l + w) * 2


# Tests
import codewars_test as test
from solution import area_or_perimeter

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(area_or_perimeter(4, 4), 16)
        test.assert_equals(area_or_perimeter(6, 10), 32)