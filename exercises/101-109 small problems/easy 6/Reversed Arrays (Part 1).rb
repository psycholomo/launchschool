# Reversed Arrays (Part 1)
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, 
# mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.
def reverse!(arr)
  counter = arr.length
  new_arr = []

  while counter > 0
    counter -= 1
    new_arr << arr[counter]

  end

# reassign each element in the array. 
# initalize a blank array
# from back to fourth in the array push it to a new array
# assaign arr to the new array
arr = new_arr
end
# Examples:

list = [1,2,3,4]
result = reverse!(list)
p result
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []

