# Get The Middle Character
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
# If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.
def center_of(str)
  length = str.length
  middle = length / 2

  if length.odd? 
    return str[middle]
  elsif length.even?
    return str[middle -1..middle]
  end

end
# Examples:

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'


