# Stringy Strings
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def stringy(size):
    return (size * "10")[0:size]


# Tests
import codewars_test as test
from solution import stringy

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(type(stringy(5)), str,"stringy() should return a string")
    @test.it("Should start with '1'")
    def start_with_one():
        test.assert_equals(stringy(10)[0],'1',"Whoops your string doesn't start with a '1'")
    @test.it("Should have the correct length")
    def correct_length():
        for i in range(1,5):
            test.assert_equals(len(stringy(i)),i)
    @test.it("Should work for some simple tests")
    def simple_test():
        test.assert_equals(stringy(3), '101', 'stringy(3)')
        test.assert_equals(stringy(5), '10101', 'stringy(5)')
        test.assert_equals(stringy(12), '101010101010', 'stringy(12)')
        test.assert_equals(stringy(26), '10101010101010101010101010', 'stringy(26)')
        test.assert_equals(stringy(28), '1010101010101010101010101010', 'stringy(28)')