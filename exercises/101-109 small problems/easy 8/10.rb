# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
# If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

def center_of(string)
  middle = string.length / 2

  if string.length.odd?
    return string[middle]

  elsif string.length.even?

    return string[middle -1..middle]
  end
end


center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
center_of('x') == 'x'


p 13 / 2


p center_of('Launchschool')