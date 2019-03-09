#1
=begin
count = 1

loop do

  if count.odd?
    puts("#{count} is odd!")
  else
    puts("#{count} is even!")
  end
  count += 1
  break if count > 5
end


#2

loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end


#6
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
if names.empty?
  break
else
  puts names.pop
  
end

end

#7
5.times do |index|
  puts index
  break if index == 2
end



5.times do |index|
  puts index
  break if index == 4
end

5.times do |index|
  puts index
  break if index < 7
end

=end


#9

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  break if number_a >= 5 || number_b >= 5
end
puts "5 was reach"