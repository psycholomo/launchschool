# Halvsies
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, 
#respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

def halvsies(arr)
  middle = (arr.length / 2)
  first_half = []
  second_half = []
  if arr.length.odd?
    first_half = arr.slice(0,middle + 1)
    second_half = arr.slice(middle + 1, (arr.length) - 1)
  else
    first_half = arr.slice(0, middle)
    second_half = arr.slice(middle , (arr.length) - 1)
  end
  
  [first_half] + [second_half]
end
# Examples:

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])# == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]


