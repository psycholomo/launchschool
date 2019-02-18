#Write a method that takes one argument,
# a string, and returns a new string with the words in reverse order.

def reverse_sentence(words)
  word_array = words.split(' ')
  reverse_word_array = []
  for i in word_array
    reverse_word_array.unshift(i)
  end
  return reverse_word_array.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'




