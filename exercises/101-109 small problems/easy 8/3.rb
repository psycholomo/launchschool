# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

def substrings_at_start(string)
  counter = 0
  array = []

  while counter < string.length
   
      array << string[0..counter]
    counter += 1
  end
  array
end


substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


p substrings_at_start('abc')