#string strings
#Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s,
#  always starting with 1. The length of the string should match the given integer.

def stringy(number)
    i = 0
    number_array = []
  while i < number
    i += 1
    
    if i % 2 == 0
      number_array.push('0')
    else
      number_array.push('1')
    end
  end
  return number_array.join('')
end  
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6)