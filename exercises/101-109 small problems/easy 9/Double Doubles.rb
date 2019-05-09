# Double Doubles
# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.
def twice(num)
  num_string = num.to_s

  num_length = num_string.length / 2
  return num * 2 if num_string.size == 1
  if num_string[0..num_length -1] == num_string[num_length..-1]
    return num
  else return num * 2
  end
end
# Examples:

p twice(37) == 74
twice(44) == 44
p twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

