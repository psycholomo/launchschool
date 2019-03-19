#Write a method that takes a string, and returns a new string in which every consonant character is doubled.
 #Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

def double_consonants(string)
  consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  consonants_to_use = consonants.map {|char| char.upcase } + consonants
  return_array = []

  string.split('').each do |char|
    if consonants_to_use.include?(char)
      return_array << char + char
    else return_array << char
    end
  end
  return_array.join('')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
#double_consonants("July 4th") == "JJullyy 4tthh"
#double_consonants('') == ""

p double_consonants('String 4you')