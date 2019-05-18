#Transpose 3x3
 
def transpose(matrix)
  
  changed_matrix = matrix.clone
  org_col_zero = matrix[0]
  org_col_one = matrix[1]
  org_col_two = matrix[2]

  changed_matrix.each_with_index do |arr, ind|
    case ind
    when 0
      then changed_matrix[ind] = [org_col_zero[0], org_col_one[0], org_col_two[0]]
    when 1
      then changed_matrix[ind] = [org_col_zero[1], org_col_one[1], org_col_two[1]]
    when 2
      then changed_matrix[ind] = [org_col_zero[2], org_col_one[2], org_col_two[2]]
    end
  end
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