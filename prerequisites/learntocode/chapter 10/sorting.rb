# sort an array of words alphabetically manually, ignore upper case and lower case, remove duplicates

array_of_words = ["this", "apple","is","really","yummy","to","eat", "yummy", "Yummy"]




def sorter_try(array=[])

downcase_words(array)
sorted_words_array = []

while array.length > 0
 i = 0 
 placeholder_word = "".downcase

for words in array
  
  i = i + 1 

  if array[i - 1] > placeholder_word
    placeholder_word = words
    

  end

end

  sorted_words_array.push(placeholder_word)
  array.delete(placeholder_word)

end

  return p sorted_words_array.reverse
end


def downcase_words(array)
  array.map(&:downcase!)

end

sorter_try(array_of_words)


