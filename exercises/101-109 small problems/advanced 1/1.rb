# pseudo code
# create a madlibs.txt file and everywhere we want to replace text put it in brackets with {noun}, {verb}, {adjective} or {adverb} in the text file
# initialize a variable called adjectives, and assign it to an array of strings that are all adjectives.
# initialize a variable called nouns, and assign it to an array of strings that are all nouns.
# initialize a variable called verbs and assign it to an array of strings that are all verbs.
# initalize a variable called adverbs and assign it to an array of strings that are all adverbs.
# initialize a variable called text and assign it to the read in file. This way we will get all of the text required to iterate through.
# split the text into individual words
# Iterate through each word
#   - use the case statement
#   - when word starts with {adverb}
#     - then alter variable called text where that word is the placeholder of {adverb}  use the sub method and pass it in the word from the paramenter in the loop and replace it with a sample from the array of nouns
#   - when word starts with {noun}
#     - then alter the object within the variable called text where that word is the placeholder of {noun} use the sub method and pass it in the word from the paramenter in the loop and replace it with a sample from the array of nouns
#   do this same procedure in the case statement for verb as done for adverb and noun
#   do this same procedure in the case statement for adjective as done for adverb and noun
#   exit the loop after all placeholder words have been altered
#   print out the text at the end




adjectives = ["sleepy", "brown", "blue", "yellow", 'lazy']
nouns = ["cat", "dog", "person", "tail", "turtle"]
verbs = ["licks", "kicks", "helps","jumps", "looks"]
adverbs = ["noisily", "lazily","beautifully","willfully", "around"]


text = File.read("madlibs.txt")
text.split.each do |word|

    case 
      when word.start_with?("{adverb}")
      then text.sub!(word, adverbs.sample)
        
    when word.start_with?("{noun}")
      then text.sub!(word, nouns.sample)
    when word.start_with?("{verb}")
      then text.sub!(word, verbs.sample)
    when word.start_with?("{adjective}")
      then text.sub!(word, adjectives.sample)
  end 
   
  
end

puts text

