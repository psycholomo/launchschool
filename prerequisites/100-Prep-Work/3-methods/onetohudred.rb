puts "enter a number between 1 and 100"

#number = gets.chomp.to_i

#if number < 0 
#elsif number < 51
#  puts "the number is between 0 and 50"
#elsif number < 101
#  puts "the number is between 51 and 100"
 
#else puts "the number is over 100"

#end

def where_is_number(number)
case number
  when number < 0
    puts "the number is less then 0"
  when number < 51
    puts "the number is between 0 and 50"
  when number < 101
    puts "the number is between 51 and 100"
  else puts "the number is over 100"

  end
end

puts where_is_number(500)