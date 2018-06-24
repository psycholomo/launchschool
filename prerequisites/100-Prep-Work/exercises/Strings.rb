

#

name = 'Roger'.downcase

if name == "RoGeR"
  puts "true"
else
  puts "false"
end


#dynamic string

name = 'Elizabeth'

puts "Hello, #{name}!"


#combining names
first_name = "John"
last_name = "Doe"

full_name = first_name + " " + last_name

puts full_name

#tricky formatting
state = 'tExAs'

puts state.capitalize


greeting = 'Hello'
greeting.gsub!('Hello', 'Goodbye')
puts greeting

#print the alphabet

alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')

#pluralize

words = 'car human elephant airplane'

word_array = words.split(' ')
plural = []
word_array.each do |word|
plural.push(word + "s")

end

puts plural


#Are you there?

colors = 'blue pink yellow orange'
color_array = colors.split(' ')

puts color_array.include? 'yellow'
puts color_array.include? 'purple'

