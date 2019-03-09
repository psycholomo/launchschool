def double_numbers!(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * multiplier
    #numbers << current_number * 2
    
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers!(my_numbers, 5)
puts my_numbers