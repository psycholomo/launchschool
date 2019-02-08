# Write a method that takes one integer argument, which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.xs

def odd(number)
  if number.is_a? Integer
    if number % 2 == 1
      puts('true')
    else
      puts('false')
    end
  else
    puts('that is not a valid number')
  end
end

odd(3)
odd(22)
