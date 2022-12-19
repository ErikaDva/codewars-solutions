# My head is at the wrong end!
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function fixthemeerkat(arr)
  reverse(arr)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Testing for fixed tests") do
    @fact fixthemeerkat(["tail", "body", "head"]) --> ["head", "body", "tail"]
    @fact fixthemeerkat(["tails", "body", "heads"]) --> ["heads", "body", "tails"]
    @fact fixthemeerkat(["bottom", "middle", "top"]) --> ["top", "middle", "bottom"]
    @fact fixthemeerkat(["lower legs", "torso", "upper legs"]) --> ["upper legs", "torso", "lower legs"]
    @fact fixthemeerkat(["ground", "rainbow", "sky"]) --> ["sky", "rainbow", "ground"]
  end
end