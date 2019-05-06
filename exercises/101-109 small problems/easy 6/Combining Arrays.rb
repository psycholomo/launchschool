# Combining Arrays
# Write a method that takes two Arrays as arguments, and returns an Array that contains
# all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example

def merge(arr1, arr2)
  (arr1 + arr2).flatten.uniq

end


# if we were to manually do this

# def merge(array_1, array_2)
#   result_array = []
#   array_1.each do |element|
#     result_array << element unless result_array.include?(element)
#   end
#   array_2.each do |element|
#     result_array << element unless result_array.include?(element)
#   end
#   result_array
# end
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]