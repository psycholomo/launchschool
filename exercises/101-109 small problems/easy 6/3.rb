#The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers.
# This series appears throughout the natural world.

#Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075
# -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

#Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

def find_fibonacci_index_by_length(end_digit)
  incrementer = 0

  array_of_digits = [1,1]

  loop do 

    break if array_of_digits[-1].to_s.length >= end_digit

     array_of_digits << array_of_digits[incrementer] + array_of_digits[incrementer + 1]
     
     incrementer += 1
    
  end
array_of_digits.length
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
#find_fibonacci_index_by_length(100) == 476
#find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847



#find the number of digits. for example (2 ) is 10, 3 is 10x 10 4 is 10 x 10 x 10 5 is 10 x 10 x 10 x 10
#calculate each number into the fibbocai seuquence
# if the number is the array has more digits then what was passed in.. break.
# else continue calculating the fibonacci sequence

 #p fibonacci_seq(3)
 #p fibonacci_seq(2)
