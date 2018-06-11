#convert roman character to  number

roman_number = "MMMDCLXVIII".downcase

roman_array = roman_number.split(//)

number_to_return = 0

roman_array.each do |item|
  case item
  when "m"
    number_to_return += 1000
  when "d"
    number_to_return += 500
  when "c"
    number_to_return += 100
  when "l"
    number_to_return += 50
  when "x"
    number_to_return += 10
  when "v"
    number_to_return += 5
  when "i"
    number_to_return +=1
  end


end

puts number_to_return