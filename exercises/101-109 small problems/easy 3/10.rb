#Palindromic Numbers


def palindrome?(string)
  if string.reverse == string
    true
  else
    false
  end
end

def palindromic_number?(value)
  string = value.to_s
  palindrome?(string)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

puts(palindromic_number?(34543))