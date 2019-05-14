#Fibonacci Numbers (Procedural)

def fibonacci(num)
  counter = 1
  return_num = 0
  return_arr = [1]
 (num -2).times do |var|  
  return_arr << 1 if counter < 2
    
    return_arr << return_arr[counter -1] + return_arr[counter]
    counter += 1

 end
 return_arr[-1]
end



p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
 fibonacci(100_001) # => 4202692702.....8285979669707537501


#[1 1 2 3 5 8]