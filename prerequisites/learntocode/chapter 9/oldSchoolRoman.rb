

def calculate_roman_numeral(number)
  number_array = []

placeholder_number = 0

  while true

  if number >= 1000 && number <= 3000
    placeholder_number = number / 1000
    number_array.push("M" * placeholder_number)
    number = number % 1000
  elsif number >= 500 && number < 1000
    placeholder_number = number / 500
    number_array.push("D")
    number = number % 500
  elsif number >= 100 && number < 500
    placeholder_number = number / 100
    number_array.push("C" * placeholder_number)
    number = number % 100

  elsif number >= 50 && number < 100
    placeholder_number = number / 50
    number_array.push("L")
    number = number % 50

  elsif number >= 10 && number < 50
    placeholder_number = number / 10
    number_array.push("X" * placeholder_number)
    number = number % 10

  elsif number >= 5 && number < 10
    placeholder_number = number / 5
    number_array.push("V")
    number = number % 5


  else 
   
    number_array.push("I" * number)

    break
    
  end
  
end

number_array.each do |numeral|

  print numeral
end
 puts ""
end

calculate_roman_numeral(2653)
calculate_roman_numeral(2999)
calculate_roman_numeral(899)