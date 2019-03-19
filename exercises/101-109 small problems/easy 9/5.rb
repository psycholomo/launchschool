# Write a method that takes a string argument, and returns true if all of the alphabetic
# characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.


def uppercase?(string)
letters = ('a'..'z').to_a

string.split('').each do |char|
  if letters.include?(char)
    return false
  else
    return true
  end
end
  return true
end


uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true