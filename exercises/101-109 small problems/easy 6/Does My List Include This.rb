#Does My List Include This?
#Write a method named include? that takes an Array and a search value as arguments. This method should return true 
#if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

def include?(arr, num)
  return_value = false
  arr.each do |number, ind|
    #p number    
     if number == num
       return_value = true

     else  false 
      
     end
  end
  return_value
end


# simpler way
# def include?(array, value)
#   array.each { |element| return true if value == element }
#   false
# end
p include?([1,2,3,4,5], 3) #== true
 p include?([1,2,3,4,5], 6) #== false
 p include?([], 3) #== false
 p include?([nil], nil) #== true
p include?([], nil) == false