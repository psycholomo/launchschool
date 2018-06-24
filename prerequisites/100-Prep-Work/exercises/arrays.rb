
=begin
#new pet

pets = ['cat', 'dog', 'fish', 'lizard']


my_pet = pets[2]
puts "I have a pet " + my_pet

#more than one

my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#free the lizard
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

puts "I have a pet #{my_pets[0]}!"


pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets[1])

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

#what color are you?

colors = ['red', 'yellow', 'purple', 'green']

colors.each do |color|
puts "I'm the color #{color}!"
end




numbers = [1, 2, 3, 4, 5]
double_numbers = []

numbers.map do |number|
  double_numbers.push(number * 2)  
end

p double_numbers

=end

numbers = [5, 9, 21, 26, 39]
divisible_by_three = []

numbers.select do |number|
  if number % 3 == 0
    divisible_by_three.push(number)
  end
end

p divisible_by_three


favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

flat_favorites = favorites.flatten

p flat_favorites

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2



