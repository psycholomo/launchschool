
#Capitalize Words
#Write a method that takes a single String argument and returns a new string that contains the original value of the 
#argument with the first character of every word capitalized and all other letters lowercase.

#You may assume that words are any sequence of non-blank characters.

# def word_cap(sentence)
#   arr = sentence.split.select {|word| word.capitalize!}

#   arr.join(' ')
# end

# #Examples


# word = 'four score and seven'
# p word_cap(word)
# p word #== 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap_manual(sentence)
  split_sentence = sentence.split
  new_sentence = []
  for i in split_sentence
    placeholder = i[0]
    new_sentence << capital(placeholder) + i[1..-1]
  end
  new_sentence.join(' ')
end

def capital(char)

  (char.ord - 32).chr

end


#every capital and lower case letter is 32 characters apart
word = 'four score and seven'
p word_cap_manual('four score and seven')
p word
