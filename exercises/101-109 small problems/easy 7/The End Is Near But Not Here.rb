#The End Is Near But Not Here
# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(word)
word_array = word.split

word_array[-2]
end

# Examples:

p penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'