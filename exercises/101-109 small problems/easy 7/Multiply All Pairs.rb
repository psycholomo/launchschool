#Multiply All Pairs
#Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns 
#a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

#You may assume that neither argument is an empty Array.
def multiply_all_pairs(arr1, arr2)
  # initalize a new array
  all_pairs = []
  #take each value in arr 1 and multiply it against every value in arr2
  arr1.each do |num|
   
    counter = 0
    while counter < arr2.length
      all_pairs.push(num * arr2[counter]) 
      counter += 1
    end
  end
all_pairs.sort
end
#Examples:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
