#Write a method that takes a string argument and returns a new string that contains the value of the original string with all 
#consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(word)
  counter = 0
  placeholder = ''
  char_array = []
  word_array = word.split('')
  word_array.each do |char|

    placeholder = char
    if placeholder == word_array[counter + 1]
      
      else 
        char_array.push(char)

  end
  counter += 1
end
char_array.join("")

end



crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''


puts crunch('ggggggggggggggg')
puts crunch('ddaaiillyy ddoouubbllee')
puts crunch('4444abcabccba')
#take input of string
#split the string into character
# place the current string iterating over into a placeholder
#if the placeholder == the next string.. drop the next string
# if the next string is unique then add to array
# make the placeholder the new character
#iterate again to see if next string equals the same string