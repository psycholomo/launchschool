#writer a program to read names and birth dates from a text file. it should ask for a name and it tells you that person's birthday


array_of_birthdays = File.read('birthdays.txt').split(",").map(&:strip)


puts array_of_birthdays

puts "Please enter a name from the imported file and I will provide you their birthday"
  name = gets.chomp
index_placeholder = 0
if array_of_birthdays.include? name 
   index_placeholder = array_of_birthdays.index(name)
   puts "#{name}'s birthday is on " + array_of_birthdays[index_placeholder +1] + ", " + array_of_birthdays[index_placeholder + 2]

 else puts "This name is not in the array"
  end
