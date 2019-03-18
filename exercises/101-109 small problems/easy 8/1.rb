#Write a method that takes an Array of numbers and then 
#returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.


def sum_of_sums(array)
  counter = 0
  total = 0
  test_array = []
  while counter < array.length
    placeholder = counter
    while placeholder >= 0
      total += array[placeholder]
      
      placeholder -= 1
    end
    counter += 1
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

p sum_of_sums([3, 5, 2]) 


#index 0, index 0 + 1, index 0 + 1 + 2, index 0 + 1 + 2 + 3