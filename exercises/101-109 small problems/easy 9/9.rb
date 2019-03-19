#Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade
#Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.


def get_grade(test_1, test_2, test_3)
  grades = (test_1 + test_2 + test_3) / 3

  case grades
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"