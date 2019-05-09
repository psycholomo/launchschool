# Uppercase Check
# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. 
# Characters that are not alphabetic should be ignored.

def uppercase?(word)
low_alpha = ('a'..'z').to_a
string_stripped = []
return_value = true
word.split('').each_with_index do |char, ind|

  if low_alpha.include?(char)
    return_value = false
  end
  end
  
  return_value

end

# Examples:

#p uppercase?('t') #== false
uppercase?('T') == true
p uppercase?('Four Score') #== false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

