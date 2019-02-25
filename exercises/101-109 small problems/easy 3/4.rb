
#Create a method that takes two arguments, multiplies them together, and returns the result.

def multiply(num1, num2)
  if num1.integer? && num2.integer?
    num1 * num2
  end
end
puts(multiply(5, 3) == 15)

