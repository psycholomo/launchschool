#Clean up the words
#Given a string that consists of some words and an assortment of non-alphabetic characters, 
#write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

def cleanup(string)
  alphabet_array = ('a'..'z').to_a + ("A".."Z").to_a
  string_array = []
# we can also use
#  text.gsub(/[^a-z]/i, ' ').squeeze(' ')

  for i in string.split('')
    if alphabet_array.include?(i)
      string_array << i
    else string_array << " "
    end

    
  end
  string_array.join("").squeeze(" ")
end

# Examples:

p cleanup("---what's my +*& line?") == ' what s my line '


# test = [' ', ' ',"what", ' ', ' ', ' ', "is"]

# p test.join(" ").squeeze(" ")