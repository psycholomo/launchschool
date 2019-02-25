#Palindromic Strings (Part 1)

#Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
#A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

def palindrome?(string)
  if string.reverse == string
    true
  else
    false
  end
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

puts palindrome?("madam i'm adam")