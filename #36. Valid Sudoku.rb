def is_valid_sudoku(board)
    hash_map = {1 => [0,1,2], 2 => [0,1,2],3 => [0,1,2],4 => [3,4,5],5 => [3,4,5],6 => [3,4,5],7 => [6,7,8],8 => [6,7,8],9 => [6,7,8]}
    for i in 0..board.length-1
        row = board[i]
        for j in 0..row.length-1
            if row[j]!='.'
                element = row[j]
                #checking the same row for number
                for k in 0..row.length-1
                     if j == k
                     elsif (element == row[k])
                        return false
                     end
                end
                #checking column for the same number
                for k in 0..board.length-1
                    if k == i 
                    elsif (element == board[k][j])
                        return false
                    end
                end
                #check in the box
                rows = hash_map[i+1]
                column = hash_map[j+1]
                for k in 0..rows.length-1
                    for l in 0..column.length-1
                        if [rows[k],column[l]] == [i,j]
                        elsif (element == board[rows[k]][column[l]])
                            return false
                        end
                    end
                end
            end
        end
    end
    #default case
    return true
end


board = [["5","3",".",".","7",".",".",".","."],
         ["6",".",".","1","9","5",".",".","."],
         [".","9","8",".",".",".",".","6","."],
         ["8",".",".",".","6",".",".",".","3"],
         ["4",".",".","8",".","3",".",".","1"],
         ["7",".",".",".","2",".",".",".","6"],
         [".","6",".",".",".",".","2","8","."],
         [".",".",".","4","1","9",".",".","5"],
         [".",".",".",".","8",".",".","7","9"]]


pp is_valid_sudoku(board)




