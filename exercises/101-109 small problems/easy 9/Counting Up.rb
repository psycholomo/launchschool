# Counting Up
# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.
def sequence(num)
  num_arr = []
  counter = 1 

  while num >= counter
    num_arr << counter
    counter += 1
  end
  num_arr
end
# Examples:

sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
sequence(1) == [1]

#can always do (1..num).to_a