# Abbreviate a Two Word Name
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def abbrev_name(name):
    split_names = name.split(" ")
    initials = [split_name[0].upper() for split_name in split_names]
    return ".".join(initials)

# Refactored Solution 1
def abbrev_name(name):
    return ".".join(i[0] for i in name.split()).upper()


# Tests
import codewars_test as test

try:
    from solution import abbrevName as abbrev_name
except ImportError:
    from solution import abbrev_name

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(abbrev_name("Sam Harris"), "S.H")
        test.assert_equals(abbrev_name("patrick feenan"), "P.F")
        test.assert_equals(abbrev_name("Evan C"), "E.C")
        test.assert_equals(abbrev_name("P Favuzzi"), "P.F")
        test.assert_equals(abbrev_name("David Mendieta"), "D.M")