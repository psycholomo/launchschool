# Write a method that will return a substring based on specified indices

#example: substring("honey", 0, 2) => "hon"

#write a method that finds all substrings in a string. No 1 letter words.

def substrings(word)
substring_arr = []

word.split('').each_with_index do |char, ind|
  counter = ind

  while counter < word.length
    
    substring_arr << word[ind..counter]
    counter += 1
  end
  
end
  for i in substring_arr
    if i.length < 2
      substring_arr.delete(i)
    end
  end
#loop through the string and take the index +1 until end of word.
#shift to the next letter as the starting letter and then go through from that index to end of word
#
substring_arr 
end

p substrings("band") # => ['ba', 'ban', 'band', 'an', 'and', 'nd']

# p "band"[0..1]
# p "band"[0..2]
# p "band"[0..3]
# p "band"[1..2]