#Searching 101
#Write a program that solicits 6 numbers from the user, 
#then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
@array_of_numbers = []
def get_six_numbers
 number = 1
 puts ("Please enter six positive numbers, the 6th number will check to see if its in the first 5 numbers, input wisely.")

  until number > 6
    puts("==> enter number ##{number}:")
    input = gets.chomp.to_i
    if input > 0
      @array_of_numbers.push(input)
      number += 1
    else puts("please enter a valid number great then 0")
    end
  end
end

#avoided using pop as it modifies the original array
def find_number(array)
  placeholder = array[-1]
  counter = 0
  while counter < array.length - 1
    if placeholder == array[counter]
      return true
      break
    end
    counter += 1
  end
  return false
end


get_six_numbers
if find_number(@array_of_numbers)
  puts("The number #{@array_of_numbers[-1]} appears in #{@array_of_numbers}")
else
  puts("The number #{@array_of_numbers[-1]} does not appear in #{@array_of_numbers}")
end
