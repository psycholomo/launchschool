# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

def diamond(num)
  counter = 0
  countdown = num / 2
  while counter < num
    counter += 1

  if counter % 2 == 1
    puts ("#{" " * countdown} #{'*' * counter}") 
    countdown -= 1
  end
  
end
countdown = 0
while counter > 0
  counter -= 1
  if counter % 2 == 1
    countdown += 1
    puts("#{" " * countdown} #{'*' * counter}") 
  end
  
end
end

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

