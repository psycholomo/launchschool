
def string_to_integer(number)
  number_array = []
  placeholder = ""
  number.chars.each do |char|
   if char == "+"
    placeholder = "+"
   elsif char == "-"
    placeholder = "-"
   else
    number_array.push(char.ord - '0'.ord)
    end
  end
  if placeholder == "-"
   return number_array.inject{|sum, i| sum * 10 + i} * -1
 else return number_array.inject{|sum, i| sum * 10 + i} 
 end
 
end


puts string_to_integer('4321') == 4321
puts string_to_integer('-570') == -570
puts string_to_integer('+100') == +100

puts(string_to_integer('-1234567890'))

