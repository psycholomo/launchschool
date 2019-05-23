# rules
# matrix needs to have equal row length values for each sub_array
# the return value will be a nested array with the rows and columns switched
# needs to be atleast 1 row and 1 column to work
# algorithm 
# Need to dynamically shift the matrix with columns and rows by using the rows length and columns length
# the rows are the length of the the matrix for each index
# the columns are the length of one of the inner arrays
# if we look at a transposed array from the previous exercse using the text example.
# when we transpose matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]  it equals 
  
#   [[1, 4, 3], 
#   [5, 7, 9], 
#   [8, 2, 6]] 
# ]
# if we want this to rotate by 90 degrees notice that we only have to flip each inner array in reverse to get the rotation of 90 degrees after it has been transposed.

# psuedo code

# Define  a method called reverse with a parameter that receives a matrix
# iterate through each sub array in the matrix using the map method.
#  - Return the reverse of each individual array and then return the full matrix as the return value of map


# Define a method called rotate90 and have an input of a matrix
# The psuedo code for this is the exact same as the previous exercise minus the return value at the end.

# initalize a variable called return_matrix and set it to an empty array
# set the columns to be the length of the matrix. I.E. if we have 4 inner arrays the column is length of 4
# Iterate through the columns one by one for each index of the arrays. This means we want from index 0 to the length of the columns that were
# initialized -1 to get the last column (the  full length would return nil for hte last element)
# - for each index we want to push an empty array into the return_matrix variable to set our inner arrays. One inner array for each column
#   - Iterate in an inner loop through each array in the matrix that was passed in as a parameter. We need specifically the index of the column.
#     I.E if the its a 3x3 matrix we would receive 0,1,2 as the indexes for the column. The arrays can be ignored for the inner loop 
#   - for each column between 0 and 2 push it into the index we created for the return matrix in the outer loop with the column and index to match the array. Column 0 with all of the values in that column
#   - break out of the inner loop and the return to the outer loop, re-assigning another index to the return Matrix and then go through the columns again for each column
# After iterating through all columns break out of the outer loop.
# return the reverse method with the return_matrix variable as the argument. This will effectively rotate the matrix by 90 degrees by flipping each array in the matrix




def rotate90(matrix)

return_matrix = []

columns = matrix[0].length
(0..columns -1).each do |ind|
  return_matrix << []
  
  matrix.each_with_index do |num, column|
   return_matrix[ind] << matrix[column][ind]
   # p matrix[column][ind] 
   end # + matrix[ind + 2][ind + 2] 
  end


reverse(return_matrix)
end

def reverse(matrix)
  matrix.map do |arr|
    arr.reverse
  end
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 #==# [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

