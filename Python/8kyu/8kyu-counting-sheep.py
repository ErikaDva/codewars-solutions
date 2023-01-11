# Counting sheep...
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def count_sheeps(sheep):
  return sheep.count(True)


# Tests
import codewars_test as test
from solution import count_sheeps

@test.describe("Basic Tests")
def basic_tests():
    
    @test.it("Basic Tests")
    def basic_tests():
        array1 = [True,  True,  True,  False,
                  True,  True,  True,  True ,
                  True,  False, True,  False,
                  True,  False, False, True ,
                  True,  True,  True,  True ,
                  False, False, True,  True ];
        
        result = count_sheeps(array1)
        test.assert_equals(result, 17, f"There are 17 sheeps in total, not {result}")