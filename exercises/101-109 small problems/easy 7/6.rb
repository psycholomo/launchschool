# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it 
# should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return
#  value; they just don't count when toggling the desired case.

def staggered_case(string)
  alpha_characters = ('a'..'z').to_a + ('A'..'Z').to_a
  letter_counter = 0
  index_counter = 0
  string_array = string.split('')
  new_array = []

  while index_counter < string_array.length
    if alpha_characters.include?(string_array[index_counter])
      if letter_counter % 2 == 0
         new_array << string_array[index_counter].upcase
        letter_counter += 1
      elsif letter_counter % 2 == 1
        new_array << string_array[index_counter].downcase
        letter_counter += 1
      end
        
    else
      new_array << string_array[index_counter]
    end

    index_counter += 1
  end
  new_array.join('')
end
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
#staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


p staggered_case('I Love Launch School!')
#('ILoveLaunchSchool!')