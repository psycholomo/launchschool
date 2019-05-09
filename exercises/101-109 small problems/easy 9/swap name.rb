# swap name
# Write a method that takes a first name, a space, and a last name passed as a single String argument, 
# and returns a string that contains the last name, a comma, a space, and the first name.
def swap_name(name)
  
  name_arr = name.split
  return_arr = []
  counter = name_arr.length
  while counter > 0
    counter -= 1
    return_arr << name_arr[counter]

  end
  return_arr.join(', ')
end
# Examples

p swap_name('Joe diet robert')# == 'Roberts, Joe'