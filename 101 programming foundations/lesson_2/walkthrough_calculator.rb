# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result


Kernel.puts("Welcome to Calculator!")
Kernel.puts("Whats the first number?")
number1 = Kernel.gets().chomp()
Kernel.puts(number1.inspect())
Kernel.puts("the first number is: " + number1 + "!")

Kernel.puts("whats the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("the second number is: " + number2 + "!")

Kernel.puts("What operation do you want to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
	result = number1.to_i() + number2.to_i()
elsif operator == '2'
	result = number1.to_i() - number2.to_i()

elsif operator == '3'
	result = number1.to_i() * number2.to_i()

else
	result = number1.to_f() / number2.to_f()

end

Kernel.puts("the result is #{result}")