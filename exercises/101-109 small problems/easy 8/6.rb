# Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number 
# is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".


def fizzbuzz(num_1, num_2)

  new_array = []
  (num_1..num_2).to_a.each do |num|
    
    if num % 5 == 0 && num % 3 == 0
      new_array << 'FizzBuzz'
    elsif num % 5 == 0
      new_array << 'Buzz'
    elsif num % 3 == 0
      new_array << "Fizz"
    else
      new_array << num
    end
  end
  new_array.join(", ")
end


p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
