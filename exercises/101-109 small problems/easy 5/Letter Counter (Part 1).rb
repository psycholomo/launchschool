# Letter Counter (Part 1)
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(word)

  word_size_hash = {}

  word.split.each do |char|
    if char.length == word_size_hash.include?(char.length)
      word_size_hash[char.length] += 1
    else
      word_size_hash[char.length] = 1
    end
  end
  # initialize an empty hash
  # create a loop that splits the word into individual words
  # for each word take the size. If they size is not a key in the hash.. Push the length value as the key as set the value to 1
  # if the size of the word is they ke.. increment the value of the hash by 1
  # return the new hash
  word_size_hash
end
# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

