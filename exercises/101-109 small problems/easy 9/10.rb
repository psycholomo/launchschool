# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

def buy_fruit(array)
  new_array = []
  array.each do |sub_array|
    counter = sub_array[1]
    while counter > 0
      new_array << sub_array[0]
      counter -= 1
    end
    
  end
  new_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  #["apples", "apples", "apples", "orange", "bananas","bananas"]





