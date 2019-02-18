# Write a method that takes one argument, a positive integer, and returns a list of 
# the digits in the number.
# example: puts digit_list(12345) == [1, 2, 3, 4, 5]

def digit_list(number)
  number_array = []
  
  if number.integer? && number.positive?
    place_holder = number.to_s.split(//)
    for i in place_holder
      number_array.push(i.to_i)
    end
  else
  end
  print number_array
end


digit_list(52523)

#convert number to string,
# split the string into each character
# convert each character back to a number
# push the number into an array