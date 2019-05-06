# Letter Counter (Part 2)
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# Examples
def word_sizes(word)

  word_size_hash = {}
  strip_chars = strip_alpha(word)
  p strip_chars
  strip_chars.split.each do |char|
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


def strip_alpha(words)
  array_of_words = []
  alphabet = ("a".."z").to_a + ("A".."Z").to_a
  words.split.each do |word|
    placeholder = word.split('')
    new_word = []
    placeholder.map do |char|
      if alphabet.include?(char)
        new_word << char
      end
    end
    array_of_words << new_word.join("")
end

  array_of_words.join(" ")
end
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

#p strip_alpha("Four score and seven.")

#gsub makes this very simple and straight forward
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
end