# Write a method that takes a String as an argument, and returns a new String that contains
#  the original value using a staggered capitalization scheme in which every other character is capitalized, 
#  and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters
#   when switching between upper and lowercase.


def staggered_case(string)
  counter = 0
  char_array = string.split('')
  new_array = []
  while counter < char_array.length

    if counter % 2 == 0 
       
      new_array << char_array[counter].upcase
  
   else new_array << char_array[counter].downcase
    end
   counter += 1
    
end

  new_array.join('')
  end


 staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
 staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!')