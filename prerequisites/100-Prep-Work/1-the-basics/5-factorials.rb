five = 5
six = 6
seven = 7
eight = 8


def factorial(number)
  
  if number <= 1
    return 1
  else
    return factorial(number -1) * number

  end


  
end


puts factorial(five)
puts factorial(six)
puts factorial(seven)
puts factorial(eight)

