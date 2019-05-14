# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, 
# false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(str)
  counter = 0

  str.split('').each do |char|
    return false if counter < 0
    if char == ")"
      counter -= 1
    elsif char == "("
      counter += 1
    end
  end
  return false if counter > 0

  true

end

# Examples:

p balanced?('What (is) this?') == true
p balanced?('What is) this?')# == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
p balanced?(')Hey!(') #== false
balanced?('What ((is))) up(') == false
