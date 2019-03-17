#Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

#You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

def reverse(array)
  new_array = []
  counter = array.length
  
  loop do 
    counter -= 1
    new_array << array[counter]
    break if counter <= 0
    
  end

  new_array
end


reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true


p reverse([1,2,3,4])