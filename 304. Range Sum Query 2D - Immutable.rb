class NumMatrix

=begin
    :type matrix: Integer[][]
=end
    def initialize(matrix) 
        @matrix = Array.new(matrix.length) { |i| i = Array.new(matrix[0].length) { |i| } }
        for i in 0..matrix.length-1 do
            @matrix[i][0] = matrix[i][0]
            for j in 1..matrix[0].length-1 do   
                @matrix[i][j] = @matrix[i][j-1] + matrix[i][j]
            end 
        end
        for i in 0..@matrix.length-1 do
           @matrix[i].unshift(0) 
        end
    end


=begin
    :type row1: Integer
    :type col1: Integer
    :type row2: Integer
    :type col2: Integer
    :rtype: Integer
=end
    def sum_region(row1, col1, row2, col2)
        if [row2, col2] == [0,0] then return @matrix[row1][col1+1] end
        col1 += 1
        col2 += 1
        base = col1 - 1
        sum = 0
        for i in row1..row2 do
            sum += (@matrix[i][col2] - @matrix[i][base])
        end
        sum
    end


end

# Your NumMatrix object will be instantiated and called as such:
# obj = NumMatrix.new(matrix)
# param_1 = obj.sum_region(row1, col1, row2, col2)