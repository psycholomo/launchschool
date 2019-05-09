
def get_grade(grade_1, grade_2, grade_3)
  average = (grade_1 + grade_2 + grade_3) / 3


  case average
  when 100..115
    "A+"
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  


  end
end


# p get_grade(95, 90, 93) #== "A"
# p get_grade(50, 50, 95) == "D"
p get_grade(101,102,103)