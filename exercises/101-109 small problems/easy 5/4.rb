#Given a string of words separated by spaces, 
#write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

#You may assume that every word contains at least one letter,
# and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

def swap(word)
first_letter = ''
last_letter = ''
word_array = []
word.split(' ').each do |char|
  first_letter = char.slice(0)
  last_letter = char.slice(-1)
  new_word = char[1..-1].prepend(last_letter)
  
  word_array.push(new_word[0..-2] << first_letter)

end

word_array.join(' ')
end


swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

#take each word in a letter of words and swap the beginning letter with the first letter
#have a place holder for the last letter and the first letter
#shift the first letter and append the last letter.. then pop the last letter and append the first letter
# repeat until all words have been shifted

puts swap("Oh what a wonderful day it is")


