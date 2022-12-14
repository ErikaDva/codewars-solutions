# Correct the mistakes of the character recognition software
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def correct(s):
    return s.translate(str.maketrans('501', 'SOI'))


# Tests
from solution import correct
import codewars_test as test

@test.describe("Example tests")
def _():
    @test.it("Example tests")
    def _():
        test.assert_equals(correct("L0ND0N"), "LONDON")
        test.assert_equals(correct("DUBL1N"), "DUBLIN")
        test.assert_equals(correct("51NGAP0RE"), "SINGAPORE")
        test.assert_equals(correct("BUDAPE5T"), "BUDAPEST")
        test.assert_equals(correct("PAR15"), "PARIS")