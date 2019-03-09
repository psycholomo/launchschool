
def string_to_integer(number)
  number_array = []
  number.chars.each do |char|
    number_array.push(char.ord - '0'.ord)
    
  end
  number_array.inject{|sum, i| sum * 10 + i}
 
    
end

puts(string_to_integer('1234567890') == 1234567890)

string_to_integer('1234567890')
puts string_to_integer('0') == 0
#number = '1'.ord - '0'.ord
#puts number

#puts('0'.ord - '0'.ord == 0)