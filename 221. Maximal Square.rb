



def maximal_square(matrix)
    if matrix.length == 1 then return matrix[0].max.to_i end
    max = 0
    #inserting another row in matrix filled with zeroes to help making histogram
    row = Array.new(matrix[0].length) { |i| i = 0  }
    matrix.unshift(row)
    #making histogram
    for i in 1..matrix.length-1
        for j in 0..matrix[i].length-1
            matrix[i][j] = matrix[i][j].to_i
            if matrix[i][j] == 1 then matrix[i][j] = matrix[i-1][j] + matrix[i][j] end
        end
    end
    pp matrix
    #finding the area as we traverse
    for i in 1..matrix.length-1
        max_in_row = matrix[i].filter {|a| a if a > max}
        max_in_row.uniq.sort
        max_in_row.each do |max_comparing|
            count = 0 ; cur = 0 ;
            matrix[i].each do |num_comparing|
                if num_comparing >= max_comparing
                    cur = cur + 1
                    if cur >= max_comparing then count = cur end
                else
                    cur = 0
                end
            end
            if count >= max_comparing then max = max_comparing end
        end
    end

    max*max
end

        # max*max
    



# matrix = [["1","0","1","0","0"],
#             ["1","0","1","1","1"],
#             ["1","1","1","1","1"],
#             ["1","0","0","1","0"]]
matrix =  [["1","0","1","0"],
            ["1","0","1","1"],
            ["1","0","1","1"],
            ["1","1","1","1"]]
# matrix = [["1","0","1","0","0"],
# ["1","0","1","1","1"],
# ["1","1","1","1","1"],
# ["1","0","0","1","0"]]


pp maximal_square(matrix)

#finding all values greater than current max




=begin

 row_max.each do |number|
            if number == 1 then max = number 
            else
            count = 0 
            matrix[i].each do |n|
                if number >= n 
                    count = count + 1
                    if count >= number then max = number end
                else 
                    count = 0
                end
                end
            end
        end
        pp " the max in #{i} row is #{max}"
        end
        pp matrix

=end