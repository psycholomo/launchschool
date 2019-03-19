#Write a method that takes a number as an argument. If the argument is a positive number, 
#return the negative of that number. If the number is 0 or negative, return the original number.

def negative(num)
  case 
  when num == 0
     0
  when  num > 0
    num * -1
  when num < 0
    num
  end
  end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby