#Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, 
#with the elements taken in alternation.
#You may assume that both input Arrays are non-empty, and that they have the same number of elements


def interleave(array_1, array_2)
  new_array = []
  counter = 0

  while counter < array_1.length
    new_array << array_1[counter]
    new_array << array_2[counter]
    counter += 1
  end


  new_array

end


interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']