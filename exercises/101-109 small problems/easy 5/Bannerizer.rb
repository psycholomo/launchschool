# Bannerizer
# Write a method that will take a short line of text, and print it within a box.

def print_in_box(phrase)
  length = phrase.length
  horizontal = "+" + "-" * (length + 2)  + "+"
  vertical = "|" + " " * (length + 2) + "|"
  puts horizontal
  puts vertical
  if phrase.length > 80
    length = 80
    
  end
  puts "|" + " " + phrase + " " + "|"
  puts "|" + " " * (length + 2) + "|"
  puts "+" + "-" * (length + 2)  + "+"

end


# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

print_in_box("To boldly go where no one has gone before hah ah h.")

p ("To boldly go where no one has gone before hah ah h. so so so i like to jump around until 80").length