#3
=begin
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end


#5

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end



#6

numbers = []
counter = 0
while counter < 5
  numbers.push(rand(0..99))
  counter += 1
end
puts numbers



#8

numbers = [7, 9, 13, 25, 18]
counter = 0
until counter == numbers.size
  puts numbers[counter]
  counter +=1
end
=end

#10
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in friends
  puts "Hello " + i
end
