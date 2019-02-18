#Sum of Digits
#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(number)
  total = 0
  number_array = number.to_s.split('')
  for i in number_array
      placeholder = i.to_i
    if placeholder.integer?
      total += placeholder
    end
  end
  total
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

puts sum(23)
puts sum(123_456_789)