#Leap Years (Part 2)

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752,
# the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

def leap_year_a?(year)

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

def leap_year_b?(year)
  if year % 4 == 0 
    true
  else
    false
  end
end

def which_year?(year)
  if year >= 1752
    leap_year_a?(year)
  else
    leap_year_b?(year)
  end
  
end

which_year?(100) == true
which_year?(400) == true

puts(which_year?(100))