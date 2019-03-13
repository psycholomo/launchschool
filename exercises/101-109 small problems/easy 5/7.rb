#Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(word)
  length_hash = {}

  stripped_word = strip_characters(word)
  stripped_word.split(' ').each do |word|

    if length_hash.has_key?(word.length)
      length_hash[word.length] += 1
    else
      length_hash[word.length] = 1
    end
  end
  length_hash
end

def strip_characters(word)
  alphabet_array = ('a'..'z').to_a + ('A'..'Z').to_a
  word_array = []
  word.split(' ').each do |char|

    placeholder_word = []

    for i in char.split('')
      if alphabet_array.include?(i)
        placeholder_word.push(i)
      end
    end
    word_array.push(placeholder_word.join(''))

  end
  word_array.join(" ")
end


word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}


print strip_characters("What's up doc?")




