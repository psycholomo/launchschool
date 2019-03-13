#Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
puts( '+' + '-' * (string.length + 2 )+ '+')
puts("|" + " " * (string.length + 2 ) + '|')
puts("|" + " " + string + " " + "|")
puts("|" + " " * (string.length + 2 ) + '|')
puts( '+' + '-' * (string.length + 2 )+ '+')


end





#print_in_box('To boldly go where no one has gone before.')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+


#have a minimum sized box 
#multiply the box based off the size of the string
# string * string.length will give us the length
# the height of the box is always the same


puts("+--+")
puts("|  |")
puts("|  |")
puts("|  |")
puts("+--+")
puts('+--------------------------------------------+'.length)


print_in_box('To boldly go where no one has gone before.')
#puts('To boldly go where no one has gone before.'.length)
#puts('--------------------------------------------'.length)
print_in_box("")