#Arithmetic Integer
#Write a program that prompts the user for two positive integers, and then prints the results of the 
#following operations on those two numbers: addition, subtraction, product, quotient, remainder, 
#and power. Do not worry about validating the input.

def calculate(num1, num2)
  puts("#{num1} + #{num2} = #{num1 + num2}")
  puts("#{num1} - #{num2} = #{num1 - num2}")
  puts("#{num1} * #{num2} = #{num1 * num2}")
  puts("#{num1} / #{num2} = #{num1 / num2}")
  puts("#{num1} % #{num2} = #{num1 % num2}")
  puts("#{num1} ** #{num2} = #{num1 ** num2}")
end
puts("Please enter the first numbers")
number1 = gets.chomp.to_i
puts("Please enter the second number")
number2 = gets.chomp.to_i

calculate(number1, number2)
