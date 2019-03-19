#Write a method that takes a first name, a space, and a last name passed as a single String argument, 
#and returns a string that contains the last name, a comma, a space, and the first name.

def swap_name(name)
  counter = (name.split(' ').length) -1
  new_name = name.split(' ')

  new_array = []

  while counter >= 0
    new_array << new_name[counter]
    counter -= 1

  end
 new_array.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
