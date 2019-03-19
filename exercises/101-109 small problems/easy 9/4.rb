
#Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

#You may assume that the argument will always be a valid integer that is greater than 0.

def sequence(num)
 num_array = []
 counter = 0
 while counter < num
  counter += 1
  num_array << counter
end
num_array

end


p sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
p sequence(1) == [1]

