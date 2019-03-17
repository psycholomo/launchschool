#Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle 
#(the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def triangle(num)
spaces = ' '
stars = '*'
counter = 0
max_counter = num
  while counter < num
    
    counter += 1
    max_counter -= 1
    p spaces * max_counter + stars * counter

  end
  
end


triangle(100)

#     *
#    **
#   ***
#  ****
# *****