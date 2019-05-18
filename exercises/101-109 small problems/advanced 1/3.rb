def transpose(matrix)

new_arr = []

matrix.each_with_index do |arr, ind|

  counter = 0
  while counter < matrix.length
    new_arr  # + matrix[ind + 2][ind + 2] 

    counter += 1

  end

end
new_arr
end


 
# def transpose(matrix)
  
#   changed_matrix = matrix.clone
#   org_col_zero = matrix[0]
#   org_col_one = matrix[1]
#   org_col_two = matrix[2]

#   changed_matrix.each_with_index do |arr, ind|
#     case ind
#     when 0
#       then changed_matrix[ind] = [org_col_zero[0], org_col_one[0], org_col_two[0]]
#     when 1
#       then changed_matrix[ind] = [org_col_zero[1], org_col_one[1], org_col_two[1]]
#     when 2
#       then changed_matrix[ind] = [org_col_zero[2], org_col_one[2], org_col_two[2]]
#     end
#   end
# end




#p transpose([[1, 2, 3, 4]])# == [[1], [2], [3], [4]]
#transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])# ==
 #[[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
#transpose([[1]]) == [[1]]