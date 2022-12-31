# Are You Playing Banjo?
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def are_you_playing_banjo(name):
    return name + " plays banjo" if name[0].upper() == "R" else name + " does not play banjo"


# Tests
import codewars_test as test

try:
    from solution import areYouPlayingBanjo as are_you_playing_banjo
except ImportError:
    from solution import are_you_playing_banjo
   
@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(are_you_playing_banjo("martin"), "martin does not play banjo");
        test.assert_equals(are_you_playing_banjo("Rikke"), "Rikke plays banjo");
        test.assert_equals(are_you_playing_banjo("bravo"), "bravo does not play banjo")
        test.assert_equals(are_you_playing_banjo("rolf"), "rolf plays banjo")