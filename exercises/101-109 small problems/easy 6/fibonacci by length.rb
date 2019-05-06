
# Fibonacci Number Location By Length
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, 
#and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. 
#For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering 
#that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. 
#(The first Fibonacci number has index 1.)

def find_fibonacci_index_by_length(num)
  counter = 1
  fib_arr = fibonacci

  for i in fib_arr 
    if i.to_s.length >= num
      return counter
      break
    end
    counter += 1
  end
end


def fibonacci(num=10000)
  counter = 1
  fibonacci_arr = [1,1]
  number = 0
  while counter < num
    number = fibonacci_arr[counter] + fibonacci_arr[counter -1]
    fibonacci_arr << number
    
    counter += 1
  end
  fibonacci_arr
end

# def fibonacci(num)
#   if num <= 1
#     return 1
#     else
   
#     fibonacci(num -1 ) + fibonacci(num -2)
#   end

# end

# Examples:

#p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
#p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
 find_fibonacci_index_by_length(10000)  == 47847
#You may assume that the argument is always greater than or equal to 2.

p fibonacci(6)

#5 + 