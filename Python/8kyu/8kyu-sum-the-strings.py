# Sum The Strings
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def sum_str(a, b):
    return str(int(a or 0) + int(b or 0))


# Tests
import codewars_test as test
from solution import sum_str

@test.describe("Fixed Tests")
def basic_tests():
    
    @test.it("Sample Tests")
    def sample_tests():
        test.assert_equals(sum_str("4","5"), "9")
        test.assert_equals(sum_str("34","5"), "39")

    @test.it("Tests with empty strings")
    def empty_string():
        test.assert_equals(sum_str("9",""), "9", "x + empty = x")
        test.assert_equals(sum_str("","9"), "9", "empty + x = x")
        test.assert_equals(sum_str("","") , "0", "empty + empty = 0")