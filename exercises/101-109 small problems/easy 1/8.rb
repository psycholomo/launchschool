# Array Average
#Write a method that takes one argument, an array containing integers, and returns the average of all numbers
#in the array. The array will never be empty and the numbers will always be positive integers.

def average(numbers)
  total_number = 0
  for i in numbers
    total_number += i
  end

  total_number / numbers.length
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
