#Palindromic Strings (Part 2)

def palindrome?(string)
  if string.reverse == string
    true
  else
    false
  end
end

def real_palindrome?(string)
  remove_characters = string.gsub(/[^0-9a-z ]/i, '').split.join('').downcase
  return palindrome?(remove_characters)

end

  real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

puts(real_palindrome?("Madam, I'm Adam"))