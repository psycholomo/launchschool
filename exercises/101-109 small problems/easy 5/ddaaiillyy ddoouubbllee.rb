# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all
#  consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(word)
  word_array = []

  word.split('').each_with_index do |char, counter|
   
  if char == word[counter + 1]
    next
  elsif char == " "
    word_array << char
  else word_array << char
  end
  end
  #take a word and split it into each character
  # compare first character to the second character and see if they are the same.. if they are delete that character
  # if the character is unique push to the array
  word_array.join("")
end


#Examples:

p crunch('ddaaiillyy ddoouubbllee') # == 'daily double'
p  crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
# crunch('') == ''


#p 'ddaaiillyy ddoouubbllee'.split('').uniq