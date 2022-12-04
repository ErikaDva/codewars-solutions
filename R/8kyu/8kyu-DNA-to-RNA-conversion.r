# DNA to RNA Conversion
# Langugage: R
# Difficulty: 8 kyu

dna_to_rna <- function(dna){
  gsub("T", "U", dna)
}


# Tests
test_that('basic tests', {
  expect_equal(dna_to_rna("TTTT"), "UUUU")
  expect_equal(dna_to_rna("GCAT"), "GCAU")
  expect_equal(dna_to_rna("GACCGCCGCC"), "GACCGCCGCC")
})