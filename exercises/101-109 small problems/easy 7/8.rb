#Write a method that takes two Array arguments in which each Array contains a list of numbers, 
#and returns a new Array that contains the product of each pair of numbers from the arguments that 
#have the same index. You may assume that the arguments contain the same number of elements.

def multiply_list(array_1, array_2)
  new_array = []
  counter = 0
  array_1.each do |num|
    new_array << num * array_2[counter]
    counter += 1
  end
  new_array
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
