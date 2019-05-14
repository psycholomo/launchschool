# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that 
# were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters 
# in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.
def letter_percentages(word)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a 
  total = 0
  total_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  word.split('').each do |char|
    if alpha.include?(char) &&  char.upcase == char
      total_hash[:uppercase] += 1
    elsif alpha.include?(char)
      total_hash[:lowercase] += 1
    else total_hash[:neither] += 1
  
    end
      
  end
  total_hash

  total = 0
   total_hash.values.map { |val| total += val }
   total_hash[:lowercase] = (total_hash[:lowercase].to_f / total * 100).round(2)
   total_hash[:uppercase] = (total_hash[:uppercase].to_f / total * 100).round(2)
   total_hash[:neither] = (total_hash[:neither].to_f / total * 100).round(2)
   total_hash
end
# Examples

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

p (5.0 / 10.0) * 100 