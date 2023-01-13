# Jenny's secret message
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def greet(name):
    if name == "Johnny":
        return "Hello, my love!"
    else:
        return "Hello, {name}!".format(name=name)


# Tests
import codewars_test as test
from solution import greet

@test.describe("Basic Tests")
def basic_tests():
    @test.it("Should greet people normally")
    def greet_people_tests():
        test.assert_equals(greet("James"), "Hello, James!")
        test.assert_equals(greet("Jane"), "Hello, Jane!")
        test.assert_equals(greet("Jim"), "Hello, Jim!")

    @test.it("Should greet Johnny a little bit more special")
    def greet_johnny_test():
        test.assert_equals(greet("Johnny"), "Hello, my love!")