#your age in months

=begin
puts "what is your age in years?"

age = gets.chomp.to_i

puts "you are #{age * 12} months old"


#print something (part 1 & 2)

puts "do you want me to print something? (y/n)"


while true
  answer = gets.chomp.downcase
if answer == "y"
  puts "something"
  break
elsif answer == "n"
  puts " "
  break
else puts "You did not answer 'y' or 'n' please re-enter a valid command."
end
end


#launch school printer (p1)
puts "How many output lines do you want? Enter a number >=3"
number_of_lines = gets.chomp.to_i


if number_of_lines >= 3

number_of_lines.times do
  puts "Launch School is the best!"
  end
else 
  puts "That's not enough lines"
end



#passwords

secret_password = "Tough"

loop do
  puts "please enter your password:"
  enter_password = gets.chomp
    if secret_password == enter_password
      puts "Welcome!"
      break
    end
  else 
    puts "Invalid Password!"
  end



#username and password

username = "jc"
secret_password = "Tough"

loop do
  puts "please enter your username: "
  enter_username = gets.chomp


  puts "please enter your password: "
  enter_password = gets.chomp

  break if username == enter_username && secret_password == enter_password
    puts "Username or password is incorrect"
  end

  puts "Welcome!"



def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
puts "Please enter the numerator"
numerator = gets.chomp
puts "please enter the denominator"
denominator = gets.chomp
if valid_number?(numerator) && valid_number?(denominator) && denominator > 0
  
  puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"
  break
 else
puts "Invalid input. Only integers are allowed."
end
end

=end

#launch school printer (p2)



 while true
puts "How many output lines do you want? Enter a number >=3 (Q to quit)"
number_of_lines = gets.chomp


quit = "q"

if number_of_lines == quit.downcase
  break
end



if number_of_lines.to_i >= 3

number_of_lines.to_i.times do
  puts "Launch School is the best!"
  end
else 
  puts "That's not enough lines"
end

end
