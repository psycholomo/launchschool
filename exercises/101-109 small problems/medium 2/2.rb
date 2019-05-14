# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.
 def block_word?(word) 
  word_block = [["B","O"], ["X:K"], ["D:Q"], ["C","P"],["N","A"],["G","T"],["R","E"],["F","S"],["J",'W'],["H","U"],["V","I"],["L","Y"],["Z","M"]]

  upcase_arr = word.upcase.split('')
  counter = 0
  upcase_arr.each do |char|
    
    word_block.each_with_index do |arr, ind|

      if arr.include?(char)
        counter += 1
        word_block.delete_at(ind)
        else 
      end
    

    end
    return true if counter == upcase_arr.length
    false
  end
  # initiliaze a nested array with each set of characters in the array.
  # split the word into individual characters
  # loop through each character in the word.
  # if the character exists in the nested array. Delete that inner array at the index
  # if the character doest exist on next iteration return false
  # else return true
  return true
 end
# Examples:

p block_word?('BATCH') #== true
p block_word?('BUTCH') == false
p block_word?('jest') == true