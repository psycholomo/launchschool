#Right Triangles
#Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
#The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def triangle(num)
  # take the number.. and subtract it by a counter to get the number of spaces and stars. If the number is 5. we set the counter to 5. subtract 1 and this gives us the number of spaces
  # we have a seperate counter for stars. The counter starts at 1 and goes up to num
  space_counter = num -1
  star_counter = 1
  while star_counter <= num
    
    puts " " * space_counter + "*" * star_counter

    space_counter -= 1
    star_counter += 1
  end

end

def upside_down(num)
  star_counter = num
  space_counter = 0
  num.times do |n|
    puts " " * space_counter + "*" * star_counter


    star_counter -= 1
    space_counter += 1

  end
end

def right_angle(num)

counter = 0

num.times do |num|
  
  counter += 1
  puts "*" * counter

end

end

# Examples:
right_angle(9)
# triangle(9)
# upside_down(9)
# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********