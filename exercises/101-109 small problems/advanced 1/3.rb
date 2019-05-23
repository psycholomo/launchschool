#Transpose 3x3

#pseudo code
# Initalize an empty array for our return array. Give it the name of return array
# We want to use the index to represent the actual value in the row and then use a number to indiciate each array in the matrix.
# Iterate through matrix with each_with_index passing it each array and the value of the index
# - use a case statement for each index
#   - when index is 0
#     - push into our return_array a new nested array, the values at matrix[0][ind] to represent the value at array 0 index 0, then the value of matrix[1][ind] and then the value of matrix[2][ind].
#       This will ensure that we get the value at index 0 for all the arrays in the matrix.
#   - when index is 1
#     - repeat the process for when case was 0. The index has now incremented to 1 to pull out all values from the arrays at index 1
#   - When index is 2
#     - repeat the process for when case was 0. The index has now increased to 2 to pull out all values from the arrays at index 2
#   break out of case statement
#   break out of our each_with_index loop
#   return our return_arr nested array

 
def transpose(matrix)
  
  return_arr = []


  matrix.each_with_index do |arr, ind|

    case ind
    when 0
      then return_arr << [matrix[0][ind], matrix[1][ind], matrix[2][ind]]
    when 1
      then return_arr << [matrix[0][ind], matrix[1][ind], matrix[2][ind]]
    when 2
      then return_arr << [matrix[0][ind], matrix[1][ind], matrix[2][ind]]
    end
  end
  return_arr
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)


p new_matrix == [[1, 4, 3], 
                 [5, 7, 9], 
                 [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


#col 1 row 1 = same
# col 2 row 1 = same
# col 3 row 1 = column 1 row 3


# row 0 column 1, 2 changes
# row 1 column 0, 2 changes
# row 2 column 0 1 