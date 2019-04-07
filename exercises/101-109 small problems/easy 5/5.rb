#Given a string that consists of some words and an assortment of non-alphabetic characters, write a method 
#that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic 
#characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).


def cleanup(words)
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a 
  #print alphabet
  char_array = []
  words.split('').each do |char|
    if alphabet.include? char
      char_array.push(char)
  else
    char_array.push(" ")
    end
  end
  char_array.join("").gsub(/ +/, " ")
end


cleanup("---what's my +*& line?") == ' what s my line '


p cleanup("---what's my +*& line?")