# Remove String Spaces
# Language: Julia
# Difficulty: 8 kyu

function nospace(x)
  replace(x, " " => "")
end

# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact nospace("8 j 8   mBliB8g  imjB8B8  jl  B") --> "8j8mBliB8gimjB8B8jlB"
    @fact nospace("8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd") --> "88Bifk8hB8BB8BBBB888chl8BhBfd"
    @fact nospace("8aaaaa dddd r     ") --> "8aaaaaddddr"
    @fact nospace("jfBm  gk lf8hg  88lbe8 ") --> "jfBmgklf8hg88lbe8" 
    @fact nospace("8j aam") --> "8jaam"
  end
end
