# Leading Substrings
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.

def substrings_at_start(str)

  return_arr = []
  counter = 0
  while counter < str.length
    return_arr << str[0..counter]
    counter += 1

  end
  return_arr
end
# Examples:
p substrings_at_start('abc') #== ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
 p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']