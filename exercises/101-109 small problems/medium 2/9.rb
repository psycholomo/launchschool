#bubble sort

def bubble_sort!(arr)

  

  loop do
    
  length = (arr.length) 
  switch = false
  counter = 1
  while counter < length 

    placeholder = arr[counter]

    if arr[counter -1 ] > arr[counter]
      arr[counter] = arr[counter - 1 ]
      arr[counter - 1] = placeholder
   
      switch = true
    
    end

    counter += 1

  end
  
  if switch == false
    break
  end
end
arr
end

p bubble_sort!([6, 2, 7, 1, 4])
# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)