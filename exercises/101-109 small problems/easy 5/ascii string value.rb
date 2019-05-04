
#ASCII String Value
#Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)


# initalize a total variable
#take a string and split it into individual character
# loop through the split string and covert it to its ascii value
#take a string and convert it to its ascii value ord method?
# 
# re-assign each value to the total variable +=
#

def ascii_value(word)
  total = 0
  # word.split('').each { |char| total += char.ord }
  # total

  word_array = word.split('')

  for words in word_array
    total = total + words.ord
  end
# we can also use the .each_char method.. or str.chars.map
  total

end

p ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0