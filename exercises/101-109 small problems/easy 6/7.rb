#Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. 
#If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

def halvsies(array)
  max_counter = array.length / 2.0
  
  min_counter = 0 
  first_half = []
  second_half = []
  loop do
    break if max_counter <= 0
    #mid_counter += 1
    first_half << array[min_counter]
    max_counter -=1
    min_counter += 1
    
  end

  loop do
    break if min_counter >= array.length
    second_half << array[min_counter]
    min_counter += 1

  end

  [first_half, second_half]
end


# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]


p halvsies([1,2,3,4, 5])