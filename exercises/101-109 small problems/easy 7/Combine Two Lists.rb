#Combine Two Lists
#Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all 
#elements from both Array arguments, with the elements taken in alternation.

#You may assume that both input Arrays are non-empty, and that they have the same number of elements.

def interleave(arr1, arr2)
  #initialize an empty array
  # create a loop with the length of array
  # push each element of the index to new array going from index 0 to index 1
  new_arr = []
  arr1.each_with_index do |char, ind|
    new_arr << char
    new_arr << arr2[ind]
  end 
  new_arr
end

#Example:

def zip(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

p zip([1,2,3],['a','b','c'])