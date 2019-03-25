#Write a method that can rotate the last n digits of a number. For example:

def rotate_rightmost_digits(num, rotation)
   new_array = num.to_s.split('')
   placeholder = new_array[-rotation]
   new_array[-rotation] = new_array[-1]
   new_array.delete_at(-rotation)
   new_array.push(placeholder)
   new_array.join('').to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

#take the last number and shift that number of positions based on rotation
# take the second number and then shift.
#

p rotate_rightmost_digits(735291, 3)