# Triangle Sides
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side,
#  and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, 
# :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
def triangle(side1, side2, side3)
  # sort the array from lowest to greatest
  triang_arr = [side1, side2, side3].sort
  placeholder = side1
  calculate_isosceles = 0 

  for i in triang_arr

    if triang_arr.count(i) >= 2

      calculate_isosceles = 2
    end
  end


  if triang_arr[0] + triang_arr[1] < triang_arr[2] || triang_arr[0] <= 0
    
    return :invalid
  elsif triang_arr.all? {|num| num == placeholder}
    return :equilateral
   elsif  calculate_isosceles == 2
      return :isosceles
     
   else 
    return :scalene
  end

  # if the first two elements in the array do not add up to be greater then the 3rd element in the array. Return :invalid
  # if all elements are the same.. then return equilateral. Can use the .all? method for this one.
  # if two elements are the same (use the count method) and is greater then the 3rd element then it it isosceles.
  # if all three elements in the array are different  and the first two elements add up to be larger then the 3rd. Return Scalene
end
# Examples:

#p triangle(3, 3, 3)# == :equilateral
 p triangle(3, 3, 1.5)# == :isosceles
 p triangle(3, 4, 5) #== :scalene
 #  triangle(0, 3, 3) #== :invalid
#p# triangle(3, 1, 1) #== :invalid

p triangle(9,9, 5)

p triangle(6,9,10)

# try_this = [3,3,5]

# #p try_this.count()
# placeholder = false
#  try_this.select do |num| 
#   puts try_this.count(num)
#   if try_this.count(num) > 1
#     return :isosceles
#   end
# end