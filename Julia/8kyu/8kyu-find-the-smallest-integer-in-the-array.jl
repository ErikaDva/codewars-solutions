# Find the smallest integer in the array
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function findsmallestint(arr)
  minimum(arr)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact findsmallestint([78, 56, 232, 12, 11, 43]) --> 11
    @fact findsmallestint([78, 56, -2, 12, 8, -33]) --> -33
    @fact findsmallestint([1-2 ^ 63, 0, 2 ^ 64]) --> 1 - 2 ^ 63
    @fact findsmallestint([-133,-5666,-89,-12341,-321423, 2 ^ 64])--> -321423
    @fact findsmallestint([0, 2 ^ 64, -1-2 ^ 64, 2 ^ 64, 2 ^ 64])--> -1-2^64
    @fact findsmallestint([1,2,3,4,5,6,7,8,9,10])--> 1
    @fact findsmallestint([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10])--> -10
    @fact findsmallestint([-78,56,232,12,8])--> -78
    @fact findsmallestint([78,56,-2,12,-8]) --> -8
  end
end