# Vowel Count
# Language: Python
# Version: 3.10
# Difficulty: 7 kyu

# Solution 1
def get_count(sentence):
    vowels = "aeiou"
    counter = 0
    for x in sentence:
        if x in vowels:
            counter += 1
    return counter

# Solution 2
def getCount(sentence):
    return sum(x in 'aeiou' for x in sentence)

# Solution 3
def getCount(sentence):
    return len([x for x in sentence if x in 'aeoiu'])


# Tests
import codewars_test as test
from solution import get_count

@test.describe("Sample tests")
def sample_tests():
    
    @test.it("Should count all vowels")
    def all_vowels():
        test.assert_equals(get_count("aeiou"), 5, f"Incorrect answer for \"aeiou\"")
        
    @test.it("Should not count \"y\"")
    def only_y():
        test.assert_equals(get_count("y"), 0, f"Incorrect answer for \"y\"")        
        
    @test.it("Should return 0 when no vowels")
    def no_vowels():
        test.assert_equals(get_count("bcdfghjklmnpqrstvwxz y"), 0, f"Incorrect answer for \"bcdfghjklmnpqrstvwxz y\"")
        
    @test.it("Should return 0 for empty string")
    def no_vowels():
        test.assert_equals(get_count(""), 0, f"Incorrect answer for empty string")
        
    @test.it("Should return 5 for \"abracadabra\"")
    def test_abracadabra():    
        test.assert_equals(get_count("abracadabra"), 5, f"Incorrect answer for \"abracadabra\"")