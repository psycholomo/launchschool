#Fibonacci Numbers (Last Digit)
# def fibonacci_last(num)
# last_num = fibonacci(num).to_s


# last_num[-1].to_i

# end
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

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
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

# a more optimized method 
