# Double Char (Part 2)
# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u),
# digits, punctuation, and whitespace should not be doubled.
def double_consonants(str)
  consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z', 'B','C','D','F','G','H','J',"K","L","M","N","P","Q",'R',"S","T","V","W","X","Y","Z"]
  return_arr = []
  str.split('').each do |char|
    if consonants.include?(char)
      return_arr << char << char
    else return_arr << char
    end
  end
  return_arr.join
end
# Examples:

p double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""