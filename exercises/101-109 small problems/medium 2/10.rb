# Sum Square - Square Sum
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Examples:

#rules 
#only positive numbers

#algorithm
# initialize a variable to 0 for total


# take number and that amount of times multiply it by itself then append it to total


def sum_square_difference(num)
  total_arr_squared = []
  total_arr_summed = []
  total_squared = 0
  total_summed = 0
  counter = 1
  while counter <= num
    total_arr_squared <<counter * counter
    total_arr_summed << counter
    counter += 1

  end
  # num.times {|int| total_arr_squared << int * int}
  # num.times {|int| total_arr_summed << int}

  for i in total_arr_squared
    total_squared += i
  end
  for i in total_arr_summed
    total_summed += i
  end
  (total_summed * total_summed) - total_squared
end

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150


# puts 10.times {|num| puts num}