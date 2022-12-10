# Quarter of the year
# Langugage: Python
# Version: 3.10
# Difficulty: 8 kyu

# Without using math
def quarter_of(month):
    return -(-month // 3)

# Using math
from math import ceil
def quarter_of(month):
    return ceil(month / 3)


# Tests
from solution import quarter_of
import codewars_test as test

def dotest(n, expected):
    actual = quarter_of(n)
    test.assert_equals(actual, expected, f"Test failed with month = {n}")
    
@test.describe("Tests")
def test_group():
    @test.it("Sample tests")
    def test_case():
        dotest(3, 1)
        dotest(8, 3)
        dotest(11, 4)