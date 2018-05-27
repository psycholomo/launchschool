#full name greeting
puts "Hello, what is your first name?"
first_name = gets.chomp
first_name.capitalize
puts "What is your middle name?"

middle_name = gets.chomp
middle_name.capitalize

puts "whats your last name?"

last_name = gets.chomp

last_name.capitalize

puts "Greetings #{first_name} #{middle_name} #{last_name} how are you?"


#bigger better favorite number

puts "Please enter your favorite number" 
number = gets.chomp.to_i
bigger_better_number = number + 1
puts "your favorite number is #{number}? I suggest a bigger better number which is #{bigger_better_number}"
