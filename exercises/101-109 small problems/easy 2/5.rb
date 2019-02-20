#Greeting a user
#Write a program that will ask for user's name. The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

def last_char_check(word)
  char_array = word.split('')
  if char_array[-1] == '!'
     true
  else  false
  end
end

puts('What is your name?')
name = gets.chomp

if last_char_check(name)
  puts "HELLO #{name.upcase} WHY ARE WE SCREAMING?"
else
  puts("Hello #{name}.")
end