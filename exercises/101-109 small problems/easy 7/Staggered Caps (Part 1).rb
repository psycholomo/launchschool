#Staggered Caps (Part 1)
#Write a method that takes a String as an argument, and returns a new String that contains the original 
#value using a staggered capitalization scheme in which every other character is capitalized, and the remaining
# characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

def staggered_case(sentence)

  this = sentence.split("").each_with_index.map do |char, ind|
    if ind % 2 == 0
      char.upcase
    elsif ind % 2 == 1
      char.downcase
    else char
    end
  end
  this.join()
end

#Example:

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p 0 % 2