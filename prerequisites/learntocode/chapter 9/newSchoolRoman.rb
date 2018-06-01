

def calculate_roman_numeral(number)
  number_array = []
placeholder_number = 0

  while true

  if number >= 1000 && number <= 3000
    placeholder_number = number / 1000
    number_array.push("M" * placeholder_number)
    number = number % 1000
  elsif number >= 500 && number < 1000
    if number >= 900
      number_array.push("CM")
      placeholder_number = number / 100
      number = number % 100
    else number_array.push("D")
      placeholder_number = number / 500
      number = number % 500
    end
    


  elsif number >= 100 && number < 500
    if number >= 400
      number_array.push("CD")
      placeholder_number = number / 100
      number = number % 100

    else
      placeholder_number = number / 100
    number_array.push("C" * placeholder_number)
    number = number % 100

    end
    

  elsif number >= 50 && number < 100
    if number >= 90
      number_array.push("XC")
      placeholder_number = number / 10
      number = number % 10

    else
      placeholder_number = number / 50
    number_array.push("L")
    number = number % 50
    end

    

  elsif number >= 10 && number < 50
    if number >= 40
      number_array.push("XL")
      placeholder_number = number / 10
       number = number % 10
    else
         placeholder_number = number / 10
    number_array.push("X" * placeholder_number)
    number = number % 10
    end

 

  elsif number >= 5 && number < 10
    if number == 9
      number_array.push("IX")
      break
    else
       placeholder_number = number / 5
      number_array.push("V")
      number = number % 5
    end

   


  else 
    

    if number == 4
      number_array.push("IV")
      break
    else
    number_array.push("I" * number)

    break
  end
    
  end

end

number_array.each do |numeral|

  print numeral
end
puts ""
end

calculate_roman_numeral(2653)
calculate_roman_numeral(2999)
calculate_roman_numeral(999)
calculate_roman_numeral(499)
calculate_roman_numeral(360)
calculate_roman_numeral(44)