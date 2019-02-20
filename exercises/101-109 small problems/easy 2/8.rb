#Sum or Product of Consecutive Integers
#Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def sum(number)
  placeholder = number
  total = 0
  until placeholder == 0
     total += placeholder
    placeholder -= 1
  end
  total
end

def product(number)
  placeholder = number
  total = 1
  until placeholder == 1
    total *= placeholder
    placeholder -= 1
  end
  total
end

puts(product(6))
response = nil
sum_product = ''

loop do 
  puts("Please enter an integer greater than 0")
  response = gets.chomp.to_i
  if response > 0
    puts("Enter 's' to compute the sum, 'p' to compute the product.")
    sum_product = gets.chomp
    if sum_product == 's' || sum_product == 'p'
      break
    else puts('please enter a value of s or p to continue. Start over and enter an integer.')
    end
  end
 end

if sum_product == 's'
puts("The sum of the integers between 1 and #{response} is #{sum(response)}")
elsif sum_product == 'p'
  puts("The product of the integers between 1 and #{response} is #{product(response)}")
end