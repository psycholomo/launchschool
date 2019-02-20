#When will I Retire?
#Build a program that displays when the user will retire and how many years she has to work till retirement.

def print_retirement_age(current_age, retirement_age)
  years_to_retirement = retirement_age - current_age
  current_year = Time.new.year
  puts("Its #{current_year}. You will retire in #{years_to_retirement + current_year}")
  puts("You have only #{years_to_retirement} of work to go!")
end

puts('what is your age?')
age = gets.chomp.to_i
puts('At what age would you like to retire?')
retire_age = gets.chomp.to_i


print_retirement_age(30, 70)