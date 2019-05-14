# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. 
# You may assume that the argument will always be an odd integer.

def diamond(num)
  length = num / 2
  stars = "*"
  counter = 1

  while counter <= num
    puts " " * length + stars * counter
    counter += 2
    length = length - 1

  end

  new_counter = num
  length = 0

  while new_counter >= 2
    new_counter -= 2
    length += 1
    puts " " * length + stars * new_counter
  end
  # puts " " * length + stars
  # print (" " * (length -1)) 
  # print stars * 3
  # take the integer and calculate the length of of blank spaces
  # then take the number and add 2 up to the length of the full star which is 9
  # take the blank spaces and add them to the number of stars
end
# Examples

# diamond(1)

# *
# diamond(3)

#  *
# ***
#  *
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

diamond(9)