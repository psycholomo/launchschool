array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#the output of array 2 is going to be exactly the same as array 1 before it was modified. The values were pushed into the new array 
#before the modification happened - false

#because array1 is mutated the values in array2 point to the same values in array1 and therefore are mutated as well - true