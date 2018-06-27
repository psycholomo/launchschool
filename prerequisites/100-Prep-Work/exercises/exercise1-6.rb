array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = []
#array.each {|number| puts number}


#array.each do |number| 
 # puts number if number > 5
#end

array.select do |number|
  if number % 2 == 1
      new_array.push(number)
    end
  end


array.push(11)

p array

array.pop
array.push(3)
p array

try_this = array.uniq
array.uniq
p try_this
p array