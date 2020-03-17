
 def reduce(arr, ele=0)
  return_ele = 0
  counter = 0
  while counter < arr.length

  return_ele yield(arr[counter], ele)
  
  counter += 1
  end

  return_ele
 end

 array = [1, 2, 3, 4, 5]
 #arr = ["a","b","c","d","e"]
 p reduce(array) { |acc, num| p  acc + num }                    # => 15
# reduce(array, 10) { |acc, num| acc + num }                # => 25
#reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass



#p arr.reduce {|arr,num|  arr + num}