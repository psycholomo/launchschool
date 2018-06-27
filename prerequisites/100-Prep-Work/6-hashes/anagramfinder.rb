words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']




anagrams = {}

words.each do |word|

  word1 = word.split("").sort
  sorted_word = word1.join(' ')
  if anagrams.has_key?(sorted_word)
    anagrams[sorted_word].push(word)

  else
    anagrams[sorted_word] = [word]

  end


end


anagrams.select do |key,value|
  
  p value
  end




