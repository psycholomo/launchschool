#rules
# input needs to be an array of numbers or letters, cannot be mixed one type of data only
# can be in any order
# the method is recursive

#algorithm
# break down all the elements in an array into nested sub arrays until each item is in its own nested sub array
# sort those sub-arrays arrays using our merge method from the previous exercise and then merge the nested sub array.
# continue merging each pair of the nested sub arrays until they are all in one array.
# Due to it being recursive return the passed in array if the length of the array is equal tor less then 1
# break the array in half through each iteration until each element is seperated
# merge the half's until it is 1 full array

# #pseudocode
# import the previous method from the previous exercise called merge as it will help greatly with solving this problem.
# Because this is a recursive method we need a condition to stop the method to avoid it going on forever.
# Define the method called merge_sort that passes in an array
# return the array as is if the array is less then or equal to 1
# initialize a variable and set it to the middle value in array by taking the length of the array and dividing it by 2
# initialize a variable for the first half of the array by taking taking the elements in the array from index 0 to one less then the middle
# initialize a variable for the second half of the array by taking the elemetns from the middle array to the last element of the array at index (-1)
# next return the merge method with merge_sort(the first array as a paramter) and merge_sort(the second half of the array) (I had to look this up) 
# This will go through the method seperate it out into each individual array, use the merge method on the first_array and second_array and the combine them back together.



def merge_sort(arr)
  return arr if arr.length <= 1
middle = arr.length / 2
first_array = arr[0..middle -1]
second_array = arr[middle..-1]
return merge(merge_sort(first_array), merge_sort(second_array))

end




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


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]