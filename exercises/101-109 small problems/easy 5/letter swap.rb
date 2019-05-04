# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume 
# that each string contains nothing but words and spaces

def swap(string)
  #split the string into an array of words
  #take the string at index 0 and put it in a placeholder
  # take the string at index -1 and put it into a placeholder
  # reassign the first letter at index 0 with the placeholder of index -1
  # reassign the last letter at index -1 with the placeholder of index 0

  array_switched = string.split.map do |letter|
    placeholder_first = letter[0]
    placeholder_last = letter[-1]
    letter[0] = placeholder_last
    letter[-1] = placeholder_first
    letter

  end 
  array_switched.join(' ')
end




# Examples:

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
 swap('a') == 'a'

