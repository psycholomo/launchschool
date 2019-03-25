#Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

#Do not use the method Array#rotate or Array#rotate! for your implementation.


def rotate_array(array)
  new_array = array.clone
  first_placeholder = array[0]
  new_array.shift
  new_array.push first_placeholder
  new_array
end
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

