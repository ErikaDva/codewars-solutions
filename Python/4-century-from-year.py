# Century From Year
# Difficulty: 8 kyu

# Solution 1
def century(year):
    return year // 100 + (0 if year % 100 == 0 else 1)

# Solution 2
def century(year):
    return (year + 99) // 100
    
# Test
import codewars_test as test
from solution import century

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(century(1705), 18, 'Testing for year 1705')
        test.assert_equals(century(1900), 19, 'Testing for year 1900')
        test.assert_equals(century(1601), 17, 'Testing for year 1601')
        test.assert_equals(century(2000), 20, 'Testing for year 2000')
        test.assert_equals(century(356), 4, 'Testing for year 356')
        test.assert_equals(century(89), 1, 'Testing for year 89')