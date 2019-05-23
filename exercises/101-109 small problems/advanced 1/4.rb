
#rules
# matrix needs to have equal row length values for each sub_array
# the return value will be a nested array with the rows and columns switched
# needs to be atleast 1 row and 1 column to work
#algorithm 
# Need to dynamically shift the matrix with columns and rows by using the rows length and columns length
# the rows are the length of the the matrix for each index
# the columns are the length of one of the inner arrays

#pseudocode
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
# return the return_matrix that now has all of the transposed rows into columns

def transpose(matrix)

return_matrix = []

columns = matrix[0].length
(0..columns -1).each do |ind|
  return_matrix << []
  matrix.each_with_index do |num, column|
   return_matrix[ind] << matrix[column][ind]
   # p matrix[column][ind] 
   end # + matrix[ind + 2][ind + 2] 
  end


return_matrix
end


# def transpose(matrix)
  
#   return_arr = []


#   matrix.each_with_index do |arr, ind|

#     case ind
#     when 0
#       then return_arr << [matrix[0][ind], matrix[1][ind], matrix[2][ind]]
#     when 1
#       then return_arr << [matrix[0][ind], matrix[1][ind], matrix[2][ind]]
#     when 2
#       then return_arr << [matrix[0][ind], matrix[1][ind], matrix[2][ind]]
#     end
#   end
#   return_arr
# end




#p transpose([[1, 2, 3, 4]])# == [[1], [2], [3], [4]]
#transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
#p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])# ==
 #[[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
#transpose([[1]]) == [[1]]


p transpose(  [[1, 5, 8],
   [4, 7, 2],
   [3, 9, 6] ])