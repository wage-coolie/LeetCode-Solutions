

def transpose(matrix)
    new_matrix = Array.new(matrix[0].length) { |i| i = Array.new(matrix.length) { |i| i = nil } }
   for i in 0..matrix[0].length-1 do
    for j in 0..matrix.length-1 do
        new_matrix[i][j] = matrix[j][i]
        
    end
   end 
   new_matrix
end

# matrix = [[1,2,3],[4,5,6]]
 matrix = [[1,2,3],[4,5,6],[7,8,9]]
pp transpose(matrix)