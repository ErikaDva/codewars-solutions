# DNA to RNA Conversion
# Langugage: Python
# Difficulty: 8 kyu

def dna_to_rna(dna):
    return dna.replace("T", "U")


# Tests
import codewars_test as test
from solution import dna_to_rna

@test.describe("Sample Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(dna_to_rna("TTTT"), "UUUU")
        test.assert_equals(dna_to_rna("GCAT"), "GCAU")
        test.assert_equals(dna_to_rna("GACCGCCGCC"), "GACCGCCGCC")