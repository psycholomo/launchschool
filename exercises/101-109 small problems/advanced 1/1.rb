# Seeing Stars
# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. 
# The smallest such star you need to handle is a 7x7 grid.

#rules
#must be an odd number greater then 7
#must be a positive number

#algorithm
# initalize length of the star is num as long as it is over 7 and odd
# find the middle of the star by dividing length /2 + 1
# on the first line its * + 2 spaces + star + 2 spaces until it adds up to length
# second line its space * + space * + space until it reaches length
# on the 3rd line its 2 spaces + 3 stars + 2 spaces

def star(num)
  length = num
  middle = length / 2 
  counter = 0
  middle_counter = middle

  while counter < middle
   middle_counter -= 1

     puts("#{' ' * counter}*#{' ' * middle_counter}*#{' ' * middle_counter}*")

    counter += 1
  end
  puts "*" * (num)

  counter = 0
  middle_counter = middle

  while counter < middle
   middle_counter -= 1

     puts("#{' ' * middle_counter}*#{' ' * counter}*#{" " * counter}*")
      #{' ' * middle_counter}*#{' ' * middle_counter}*")

    counter += 1
  end
end

# Examples

#star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
 star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

