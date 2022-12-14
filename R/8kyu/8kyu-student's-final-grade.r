# Student's Final Grade
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

final_grade <- function(exam, projects){
  if (exam > 90 | projects > 10){
    100
  }else if (exam > 75 & projects >= 5){
    90
  }else if (exam > 50 & projects >= 2){
    75
  }else{
    0
  }
}


# Tests
final_grade <- function(exam, projects){
  if (exam > 90 | projects > 10){
    100
  }else if (exam > 75 & projects >= 5){
    90
  }else if (exam > 50 & projects >= 2){
    75
  }else{
    0
  }
}