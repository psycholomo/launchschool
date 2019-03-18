# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist
# of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence 
# as the substrings appear in the string. Duplicate palindromes should be included multiple times.

#You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case;
# that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.


def palindromes(string)
  placeholder = string.reverse
  #p substrings(placeholder)
  p substrings(string)
  
  if substrings(placeholder) == substrings(string)
   return true
  else return false
  end
end

def substrings(string)
   counter = 0
  array = []
  while counter < string.length
      in_loop_counter = counter 
      while in_loop_counter < string.length
        array << string[counter..in_loop_counter]
       # puts string[counter..in_loop_counter]
        in_loop_counter += 1
      end
    counter += 1
    
  end
  array
end


# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]


#substrings('abcd')
 palindromes('madam')