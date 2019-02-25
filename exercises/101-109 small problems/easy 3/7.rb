#Odd list

#Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
#The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(array)
  new_array = []
  counter = 0
  while counter < array.length
    if counter %2 == 0
      new_array.push(array[counter])
    end
    counter +=1
  
  end
new_array
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

puts(oddities([123]))
print(oddities([2, 3, 4, 5, 6]))