#Write a method that takes an Array as an argument, and reverses its elements in 
#place; that is, mutate the Array passed into this method. The return value should be the same Array object.

def reverse!(array)
  new_array = []

  array.length.times do 
  new_array << array.pop
  end

  new_array.each do |char|
  array << char 
end
  
  array
  
end


list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []


reverse!(list = %w(a b e d c))