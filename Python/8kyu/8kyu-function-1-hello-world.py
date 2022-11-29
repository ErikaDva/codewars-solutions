# Function 1 - hello world
# Language: Python
# Difficulty: 8 kyu

def greet():
    return "hello world!"


# Tests
import codewars_test as test
from solution import greet

@test.describe("Greet function")
def _():
    @test.it("Making sure greet exists")
    def _():
        try:
            test.expect(greet)
        except NameError:
            test.fail("Greet doesn't exist")
    @test.it("Testing that it returns hello world!")
    def _():
        test.assert_equals(greet(), "hello world!", "Greet doesn't return hello world!")