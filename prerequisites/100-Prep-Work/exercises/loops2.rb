
=begin
  

#even or odd

count = 1

loop do
  if count >5 
    break

    elsif count % 2 == 0
    puts "#{count} is even!"

  else

    puts "#{count} is odd!"
  end
  count += 1

  end



####catch the number
loop do
  number = rand(100)

  if number <= 10
    puts number
    break
  end


  puts number
end


#conditional loop Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.
process_the_loop = [true, false].sample

if process_the_loop == true
  puts "the loop was processed!"
else
  puts "the loop wasn't processed!"
  end



#empty the array Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']



loop do 

puts names.pop

break if names.empty?

end




#stop counting
5.times do |index|
  puts index
  if index == 2
    break
  end

end



#only even

number = 0

until number == 10
  number += 1
  if number %2 == 1
    next
  else
  puts number
end
end




number_a = 0
number_b = 0

loop do

  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
    puts '5 was reached'
  break

end




#greeting

def greeting
  while $number_of_greetings > 0
  puts 'Hello!'
  $number_of_greetings -=1
end
end

$number_of_greetings = 2

greeting

=end
