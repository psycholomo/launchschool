# rules
# must be an odd number greater then 7
# must be a positive integer

# psuedocode
# define a method called star and pass it in a number greater then 7. The number must be odd
# return string of "error" if the number is not greater or equal to 7 and the number is not odd

# Initialize a variable "middle" find the middle of the star by dividing the number (which is the length of the star)  by 2
# initialize a counter to help us find the number of starting spaces, before we print a star Initiliaze it to 0
# intialize a seperate counter for the middle so that we can find how many spaces between each star need to be printed. Call this middle_counter
# Iterate
#     - while counter is less then the middle
#     - subtract the middle counter by 1
#     - then print out each line for the first top of the star. This is achieved by printing a spaces multipled by the counter, followed by a star
#       - Then print out the space multipled by the middle counter, followed by a star, 
#       - then multiply the space by the middle counter followed by the third star.
#     - increment the counter by 1
# when the counter is greater then the middle. Break the loop

# print out the middle my multiplying "*" by num

# next find the bottom of the star 
# re-assign the counter to 0
# re-assign the middle counter to equal the middle variable
# Iterate - flip the counters to make the star in the opposite direction
# => - while counter is less then the middle
#     - subtract the middle counter by 1
#     - then print out each line for the first top of the star. This is achieved by printing a spaces multipled by the middle counter, followed by a star
#       - Then print out the space multipled by the counter, followed by a star, 
#       - then multiply the space by the counter followed by the third star.
#     - increment the counter by 1
# when the counter is greater then the middle. Break the loop
# End the program








def star(num)
  return "error" if num < 7 && num.even?
  middle = num / 2 
  counter = 0
  middle_counter = middle

  while counter < middle
   middle_counter -= 1

     puts("#{' ' * counter}*#{' ' * middle_counter}*#{' ' * middle_counter}*")

    counter += 1
  end
  puts "*" * num

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

