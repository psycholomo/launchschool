
def fibonacci(n)
  uptick = 0
  counter =  n
  arr = [1, 1]
  while counter > 2
    arr << arr[uptick] + arr[uptick + 1]
    counter -= 1
    uptick += 1
  end
arr[-1]

end

def fibonacci_last(num)
 last_digit = fibonacci(num)
 last_digit.to_s[-1].to_i
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4


p fibonacci_last(100) == 5


# def fibonacci_first_60
# first_60 = [0, 1, 1]
#   f1 = 0
#   f2 = 1
#   f3 = 1
#   57.times do |i|
#     f1 = f2
#     f2 = f3
#     f3 = (f2 + f1) % 10
#     first_60.push(f3)
#   end
#   first_60
# end

# def fibonacci_last(num)
#   fibonacci_first_60[(num % 60)]
# end