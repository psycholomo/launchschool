#Leap Years (Part 1)

#In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
#unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year
# unless the year is evenly divisible by 400.

def leap_year?(year)
  if year % 100 == 0
    then if year % 400 == 0
      true
    else false
    end
  elsif year % 4 == 0
    true
  else
    false
  end
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
