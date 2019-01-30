require 'yaml'
MESSAGES = YAML.load_file('prompt.yml')
#ask the user for two numbers
#ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")

end

def messages(message, lang='en')
  MESSAGES[lang][message]

end


def valid_number?(num)
  num.to_i().to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num

end

def operation_to_message(op)
  word = case op
  when '1'
    "Adding"

  when '2'
    "Subtracting"

  when '3'
    "Multiply"

  when '4'
    "dividing"
  end

  x = 'this is just a test'

  return word
end

def number?(input)
  valid_number?(input) ||  valid_float?(input)
end


LANGUAGE = 'en'
number1 = ''
number2 = ''

prompt(messages('welcome',LANGUAGE))

name = ''
loop do 
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("hi #{name}")
loop do # main loop


  loop do 
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break

    else
      prompt(MESSAGES['is_it_valid'])
    end

  end

  prompt(number1.inspect)
  prompt("The number is: " + number1 + "!")



  loop do 

    prompt("Whats the second number?")

    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm.. that doesnt look like a valid number")
    end

  end

  prompt("The number is: " + number2 + "!")
  

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  


  prompt(operator_prompt)

  operator = ''
  
  loop do
  operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3 or 4")

    end

  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
	 when '1'
      number1.to_i() + number2.to_i()
	 when '2'
      number1.to_i() - number2.to_i()
    when '3'
      number1.to_i * number2.to_i()
    when '4'
      number1.to_f() / number2.to_f()
  end

  prompt("The result is #{result}")

  prompt("Do you want to perform another clculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt("thank you for running the calculators")