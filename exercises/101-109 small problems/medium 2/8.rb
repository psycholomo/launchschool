# Next Featured Number Higher than a Given Value
# A featured number (something unique to this exercise) is an odd number that is a multiple of 7,
#  and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd),
#   97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number 
# that is greater than the argument. Issue an error message if there is no next featured number.

#rules
#needs to be an odd number
# cannot have the same digit in the number
# has to be a multiple of 7
# needs to be greater then the number provided
#algorithm
#take num and set it to a seperate variable
# increment the new variable by 1 until num % 7 == 0
# check to see if the number is odd. if not odd. return false and increment the number by 7
# split the number into a string and check if the count of the digits > 2 if so return false
# increment the number by 7
# else return true
def featured(num)
seven_counter = num +1

until seven_counter %7 == 0
  seven_counter += 1
end
  statement = false
  return_num = seven_counter

loop do

  if return_num.even?
    return_num += 7
    elsif calculate_count?(return_num)
      return_num += 7
  else
    break
  end
end
  return_num

end

def calculate_count?(num)
  new_num = num.to_s.split('')

  for i in new_num
    return true if new_num.count(i) > 1 
  end
  false
end

# Examples:

p featured(12) #== 21
# featured(20) == 21
# featured(21) == 35
# p featured(997) #== 1029
p featured(1029) == 1043
 featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

  p '133'.split('').map do |char|
    '133'.split('').count(char) 
end

