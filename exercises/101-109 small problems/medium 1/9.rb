
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


fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501


p fibonacci(20)
#p fibonacci(100_001)


# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end