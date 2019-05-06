#Swap Case
#Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, 
#and every lowercase letter by its uppercase version. All other characters should be unchanged.

#You may not use String#swapcase; write your own version of this method.

def swapcase(word)
 
 arr = word.split("").map do |char|
    if char == char.upcase
       char.downcase
    elsif char == char.downcase
      char.upcase
    else char
    end
  end
  arr.join
end
#Example:

swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'