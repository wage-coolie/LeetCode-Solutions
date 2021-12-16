
def rotate(matrix)
    #first we transpose
    for i in 0..matrix.length-1
        for j in 0..matrix[0].length-1
            if j > i  
            temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
            end
        end
    end
    iterate_till = matrix[0].length/2
    for i in 0..matrix.length-1
        for j in 0..iterate_till-1
            temp = matrix[i][j]
            matrix[i][j] = matrix[i][(matrix.length-1)-j]
            matrix[i][(matrix.length-1)-j] = temp
        end
    end
    matrix
end

 matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]

pp rotate(matrix)