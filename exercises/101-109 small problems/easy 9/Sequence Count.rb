# Sequence Count
# Create a method that takes two integers as arguments. The first argument is a count, and the second is the 
# first number of a sequence that your method will create. The method should return an Array that contains the 
# same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting
#  number can be any integer value. If the count is 0, an empty list should be returned.
def sequence(count, number)
  # initalize an array and put in the number as the first value in the array
  return [] if count == 0
  arr = [number]
  counter = count -1
  iterator = 0

  while counter > 0
    counter -= 1
    arr << arr[iterator] + number
    iterator += 1


  end
  # take the count -1 and iterate it over x number of times
  # take the value of index and add it with number..
  # push it to the array
  arr
end
# Examples:

#the simple way
# def sequence(count, first)
#   (1..count).map { |idx| idx * first }
# end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []