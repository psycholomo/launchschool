# Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase 
# or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(str)
  counter = 0
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  return_array = str.split("").each_with_index.map do |char, ind|
    if counter % 2 == 0 && alpha.include?(char)
      
      counter += 1
      char.upcase
    elsif counter % 2 == 1 && alpha.include?(char)
      
      counter += 1
      char.downcase
    else char
    end
  end
  return_array.join
end

# Example:

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


#   this = sentence.split("").each_with_index.map do |char, ind|
#     if ind % 2 == 0
#       char.upcase
#     elsif ind % 2 == 1
#       char.downcase
#     else char
#     end
#   end
#   this.join()
# end