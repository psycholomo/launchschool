#Lettercase Counter
#Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters
# in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

def letter_case_count(str)
  hash_counter = {lowercase: 0, uppercase: 0, neither: 0}
  alpha = ('a'..'z').to_a + ('A'.."Z").to_a
  str.split('').each do |char|
    
    if char.upcase == char && alpha.include?(char) 
      hash_counter[:uppercase] += 1
    elsif char.downcase == char && alpha.include?(char)
      hash_counter[:lowercase] += 1
    else
      hash_counter[:neither] += 1
    end
  end
  #initialize a hash and set the keys of lowercase, uppercase and neither to 0
  # iterate through the string and check to see if the letter is uppercase, lowercase or neither.
  # increment the value of the key by 1 depending on what it is.
  hash_counter
end

#Examples

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end