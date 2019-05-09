# All Substrings
# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in
#  the string the substring begins. This means that all substrings that start at position 0 should come first, then 
#  all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings 
#  at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:
  def substrings(str)
    return_arr = []
    str.split('').each_with_index do |_, ind|
      counter = ind
      while counter < str.length
        return_arr << str[ind..counter]
        counter +=1
      end
    end
    return_arr
  end
# Examples:

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


def substrings_at_start(str)

  return_arr = []
  counter = 0
  while counter < str.length
    return_arr << str[0..counter]
    counter += 1

  end
  return_arr
end