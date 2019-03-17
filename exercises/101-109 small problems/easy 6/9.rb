#Write a method named include? that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

def include?(array, num)
 
  array.each do |increment|
    
      return true if increment == num
    
  end
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false