#Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

#Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results.
#For similar reasons, the return value for our fourth example doesn't have any leading zeros.

def reversed_number(num)

  num_to_string_array = num.to_s.split('')
  counter = num_to_string_array.length
  return_array = []

  while counter > 0
    counter -= 1
    return_array << num_to_string_array[counter]
    

  end
  return_array.join('').to_i
end

p reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

p reversed_number(12345)