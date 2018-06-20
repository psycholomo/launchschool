

=begin 

print while

numbers = []
counter = 0
while counter < 5
  counter += 1
  numbers.push(rand(0..99))
  

end

puts numbers




#count up

count = 1

until count == 10
  puts count
  count += 1
end




#print Until

numbers = [7, 9, 13, 25, 18]
counter = 0

until counter  == numbers.length
    puts numbers[counter]
  counter+=1


end



#That's Odd

for i in 1..100
  if i % 2 == 1
  puts i
end
end

=end

#Greet Your Friends
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in (0...friends.size)
  puts "Hello, #{friends[i]}!"

end






