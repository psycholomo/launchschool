=begin
Write a method that takes one argument, 
a string containing one or more words, and returns the given string with all 
five or more letter words reversed. Each string will consist of
 only letters and spaces. Spaces should be included only when more 
 than one word is present.
=end 

def reverse_words(words)
  word_array = words.split(' ')
  final_array = []
  for i in word_array
    if i.length >= 5
      string_array = i.split('').reverse.join('')
      final_array.push(string_array)
      
    else
      final_array.push(i)
    end
  end
  return final_array.join(' ')
end

puts reverse_words('Professional')          
puts reverse_words('Walk around the block')
puts reverse_words('Launch School') 


reverse_words('the dog barks fast')