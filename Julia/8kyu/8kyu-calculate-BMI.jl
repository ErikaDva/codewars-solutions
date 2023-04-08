# Calculate BMI
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function bmi(weight, height)
    bmi = weight/(height^2)
    
    if (bmi <= 18.5)
        return "Underweight"
    elseif (bmi <= 25.0)
        return "Normal"
    elseif (bmi <= 30.0)
        return "Overweight"
    else
        return "Obese"
    end
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact bmi(50, 1.80) --> "Underweight"
    @fact bmi(80, 1.80) --> "Normal"
    @fact bmi(90, 1.80) --> "Overweight"
    @fact bmi(110, 1.80) --> "Obese"
    @fact bmi(50, 1.50) --> "Normal"
  end
end