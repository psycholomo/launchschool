# Rotation (Part 2)
# Write a method that can rotate the last n digits of a number. For example:



def rotate_rightmost_digits(num, rotation)
  num_arr = num.to_s.split('')


  #end_number = num_arr[-1]
  #p end_number
  placeholder = num_arr[-rotation]
   num_arr.delete_at(-rotation)
  num_arr.push(placeholder)

  #num_arr[-rotation] = end_number

 num_arr.join('').to_i
end


def rotate_array(arr)
new_arr = arr.clone
  placeholder = arr[0]
  new_arr.push placeholder
  new_arr.shift



  new_arr
end


p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) == 735912
#rotate_rightmost_digits(735291, 4) #== 732915
#rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

