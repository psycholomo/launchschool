# #rules
# not allowed to sort after the merge. Sort this manually when merging
# the two input arrays as parameters are pre-sorted before being merged
# Not allowed to remove elements from the original arrays or modify the original array
# atleast 1 array has elements in it. The other can be empty

# #algorithm
# for each number in both arrays compare the first element in each array. If one is less then the other then push the one that is less and move it out of position 0.
# as long as each element has something to compare keep iterating and popping the elements
# once there is only elements in one array. Push the remainder of that element into the new array

# #pseudo code
# clone array one that is passed in as a parameter and set it to the variable new_arr1
# clone array two that is passed in as a parameter and set it to the variable new_arr2
# intiralize an empty array called return_array and set it to an empty array
# While new array1 and new array2 have elements in them. continue looping until one of them is empty.
# - if new_array1 at index 0 has a greater value then new_array2 at index0
#     - push the value of array2 into the return array
#     - remove the element at index 0 on new array 2
#   - else if the value of array2 at index 0 has a greater value then the value of array1 at index0
#     - push the value of array1 into the return array
#     - remove the element at index 0 on new array 1
#   break the loop once one of the arrays is empty
# next check if there are elements in array1. If it is not empty
#   - loop through each element in array 1 and push the value to the return array then break the loop
#   - remove the remaining elements from the new_array1 to ensure they are empty
# next check to see if array 2 is empty. If it is not empty
#   - loop through each element in array 2 and push the value to the return array then break the loop
#    - remove the remaining elements from the new_array2 to ensure they are empty
# Once conditional has been met, and iteration is done inside of the conditional. Return the return_array with all the new values in the array.



def merge(arr1, arr2)

  new_arr1 = arr1.clone
  new_arr2 = arr2.clone

  return_array = []

   while new_arr1.empty? == false && new_arr2.empty? == false
   
    if new_arr1[0] > new_arr2[0]
      return_array << new_arr2[0]
      new_arr2.shift
    elsif new_arr2[0] > new_arr1[0]
      return_array << new_arr1[0]
      new_arr1.shift
    end
   
   end
   # clean up the stragglers in the left over array
   if new_arr1.empty? == false
      new_arr1.each do |num|
        return_array << num
      end
    else
       new_arr2.each do |num|
        return_array << num
      end
    end
return_array
end

 arr = [1,5,9]

 p merge(arr, [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]


p arr

 arr = [1,5,9]
# new_arr = arr.clone

# new_arr.pop

# p new_arr
# p arr