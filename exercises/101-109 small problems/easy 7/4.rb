#Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, 
#and every lowercase letter by its uppercase version. All other characters should be unchanged.
#You may not use String#swapcase; write your own version of this method.

def swapcase(word)
  new_array = []
  lowercase = ('a'..'z').to_a
up_case = ('A'..'Z').to_a
  word.split('').each do |char|
    if lowercase.include?(char)
      new_array << char.upcase
    elsif up_case.include?(char)
      new_array << char.downcase
    else
      new_array << char
      
    end
  end
  new_array.join('')
end

swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

p swapcase('Tonight on XYZ-TV')


