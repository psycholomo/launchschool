

counter = 100
second_bottle = 99
99.times do 
  counter -= 1
  second_bottle -= 1
  

  if counter == 1
  puts("#{counter} bottle of beer on the wall")
  puts("#{counter} bottle of beer")
  puts ("take one down pass it around")
  puts ("#{second_bottle} bottles of beer on the wall")
  puts " "
  puts "THE END"

elsif counter == 2
    puts("#{counter} bottles of beer on the wall")
  puts("#{counter} bottles of beer")
  puts ("take one down pass it around")
  puts ("#{second_bottle} bottle of beer on the wall")
  puts " "
else

  puts("#{counter} bottles of beer on the wall")
  puts("#{counter} bottles of beer")
  puts ("take one down pass it around")
  puts ("#{second_bottle} bottles of beer on the wall")
  puts " "
end
end

