# Tri-Angles
# A triangle is classified as follows:

# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: 
# if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, 
# :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

#rules
# all numbers need to be greater then 0
# all numbers combined need to add up to 180
# if all 3 numbers are less then 90 it is acute
# if one angle is greater then 90 it is obtuse
# if one degree is 90 it is a right angle

#algothrithm
# combine the numbers into an array
# calculate the total of all 3 numbers and return invalid if the total is greater or less then 180
# loop through the array and check each number if num == 90 return right angle
# if all numbers are less then 90 return actute
# if one number is greater then 90 return obtuse
# return invalid if number is less then or equal to 0

def triangle(num1, num2, num3)
  total = num1 + num2 +num3
  num_arr = [num1, num2, num3]
  return :invalid if total < 180

  num_arr.each do |num|
    if num <= 0
      return :invalid
      break
    elsif num == 90
      return :right
      break
    elsif num_arr.all? {|num| num < 90 }
      return :acute
      break
    elsif num > 90
      return :obtuse
      break
      
    end
    
  end
end

# Examples:

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid