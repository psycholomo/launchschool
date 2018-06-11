#give the user a spank for each birthday that they have had.
require 'time'
current_time = Time.new
puts "We want to find out how many Birthdays you have had, Please enter the year you were born"
year_born = gets.chomp
puts "enter the month you were born."
month_born = gets.chomp
puts "please enter the day you were born."
day_born = gets.chomp

birthday = "#{year_born}-#{month_born}-#{day_born}"
birthday_time = Time.parse(birthday)

number_of_years = ((current_time - birthday_time) / (24 * 60 * 60)) / 365
number_of_years.to_i

for years in 1..number_of_years do 
  puts "heres a spank! for your # #{years} birthday"
  
end

