# Sum of Sums
# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence 
# for that Array. You may assume that the Array always contains at least one number.

def sum_of_sums(int_arr)
sum = 0
sum_arr = []

int_arr.each_with_index do |num, ind|
  counter = ind
while  counter < int_arr.length
  sum_arr << int_arr[ind]
  counter += 1
  
end

end
sum_arr.each {|num| sum += num}
sum
end
# Examples:

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5])# == 35
