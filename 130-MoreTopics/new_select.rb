 ddef select(arr)
  counter = 0
  return_value = []
  while counter < arr.size
    yield(arr[counter])

    if yield(arr[counter])

      return_value << arr[counter]
    end

    counter +=1
  end
return_value
end


new_array = [1,2,3,4,5]
p select(new_array) {|num| num.odd?}
p new_array.select {|num| puts num}
p new_array.select {|num| num + 1}