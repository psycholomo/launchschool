#Squaring an Argument

#Using the multiply method from the "Multiplying Two Numbers" problem, 
#write a method that computes the square of its argument (the square is the 
#result of multiplying a number by itself).


def multiply(num1, num2)
  if num1.integer? && num2.integer?
    num1 * num2
  end
end

def square(num)
  multiply(num, num)
end

square(5) == 25
square(-8) == 64
puts(square(-8))