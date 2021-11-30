def maximal_rectangle(matrix)
    if matrix == [] then return 0 end
    matrix.map! { |x| x.map { |e| Integer(e) }}
    rows = matrix.length
    col = matrix[0].length
    for i in 1..rows-1
       matrix[i] = m_histogram(matrix[i],matrix[i-1])
    end
    area = []

    max = 0
    for i in 0..rows-1
        for j in 0..col-1
            number = matrix[i][j]
            left = j-1 ; right = j+1 ;
            left_counter = 0 ; right_counter = 0 ;
            if left >= 0
                (left).downto(0) do |x|
                    if matrix[i][x] >= number 
                     left_counter = left_counter + 1
                    else
                     break
                    end
                end
            end
            if right < col-1
                for x in right..col-1  
                    if matrix[i][x] >= number 
                        right_counter = right_counter +1
                    else
                        break
                    end
                end
            end
        area[j] = number + (number*left_counter) + (number*right_counter)
        end
        (max>area.max)?(max=max):(max=area.max)
        area.map! { |ink| ink = 0 }
    end
    return max
end

def m_histogram(row , row_before)
    for i in 0..row.length-1
        if row[i] == 1 then row[i] = row[i] + row_before[i]  end
    end
    return row
end

matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]

pp maximal_rectangle(matrix)

=begin
    the area of an element in a histogram is element + (element * continuos iteration of elements>=element in left side) + (element * continuos iteration of elements>=element in right side)
    
    thus we create an array for the specific row of histogram having area of each element stored
    next we calculate max of the row and if it was larger than previous one, we store it .
=end

# REFERENCE =  https://www.youtube.com/watch?v=vYchmWHcjeA

