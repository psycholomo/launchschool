# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.
# You may (and should) use the substrings_at_start method you wrote in the previous exercise:




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

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


p substrings('abcde')
#p substrings('strings')


# p 'abcde'[0..0]
# p 'abcde'[0..1]
# p 'abcde'[0..2]
# p 'abcde'[1..2]
# p 'abcde'[3..8]