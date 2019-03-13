#Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
#Words consist of any string of characters that do not include a space.

def word_sizes(word)
  length_hash = {}
  word.split(' ').each do |word|
    if length_hash.has_key?(word.length)
      length_hash[word.length] += 1
    else
      length_hash[word.length] = 1
    end
  end
  length_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

puts  word_sizes('Hey diddle diddle, the cat and the fiddle!')

#create a hash table that gets the length of each word. return the length of the word as they key and then how many occurances of length of words as the value



#the above code can be replaced with 

def word_sizes2(string)
  sizes = Hash.new(0)
  string.split.each { |word| sizes[word.size] += 1 }

  sizes
end

puts  word_sizes2('Hey diddle diddle, the cat and the fiddle!')