# You only need one - Beginner
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function check(arr, element)
  element in arr
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact check([66, 101], 66) --> true
    @fact check([78, 117, 110, 99, 104, 117, 107, 115], 8) --> false
    @fact check([101, 45, 75, 105, 99, 107], 107) --> true
    @fact check(["t", "e", "s", "t"], "e") --> true
    @fact check(["what", "a", "great", "kata"], "kat") --> false
    @fact check([66, "codewars", 11, "alex loves pushups"], "alex loves pushups") --> true
    @fact check(["come", "on", 110, "2500", 10, "!", 7, 15], "Come") --> false
    @fact check(["when's", "the", "next", "Katathon?", 9, 7], "Katathon?") --> true
    @fact check([8, 7, 5, "bored", "of", "writing", "tests", 115], 45) --> false
    @fact check(["anyone", "want", "to", "hire", "me?"], "me?") --> true
  end
end