# Running Totals

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

def running_total(array)
  counter = -1
  new_array = []
  #new_array.push(array[0])
  for i in array
    if i == array[0]
      new_array.push(i)
    else
      new_array.push(new_array[counter] + i)
    end
  #new_array.push(array[counter] + array[counter + 1])
  counter += 1
  end
  
  new_array
end

#running_total([2, 5, 13]) == [2, 7, 20]
#running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
#running_total([3]) == [3]
#running_total([]) == []

puts(running_total([14, 11, 7, 15, 20]))

# push array[0]
#push array[0] + array[1]
# push array[1] + array[2]

