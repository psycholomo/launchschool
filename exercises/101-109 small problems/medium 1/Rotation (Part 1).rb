# Rotation (Part 1)
# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(arr)
new_arr = arr.clone
  placeholder = arr[0]
  new_arr.push placeholder
  new_arr.shift



  new_arr
end

def rotate_string(str)
new_arr = str.split('')
rotate = rotate_array(new_arr)

rotate.join

end

def rotate(int)
  string_num = int.to_s.split('')
  rotate = rotate_array(string_num)
  rotate.join.to_i
end

# Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) #== [2, 3, 4, 1]   # => true
p x# == [1, 2, 3, 4]                 # => true

p rotate_string("hello")

p rotate(45689)
