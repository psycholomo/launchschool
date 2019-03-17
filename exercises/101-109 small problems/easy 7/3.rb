#Write a method that takes a single String argument and returns a new string that contains the original value of the argument 
#with the first character of every word capitalized and all other letters lowercase.

#You may assume that words are any sequence of non-blank characters.


def word_cap(string)
  new_array = []
 string.split(' ').each do |word|
  new_array << word.capitalize
 end
 new_array.join(' ')
end
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

p word_cap('four score and seven ')