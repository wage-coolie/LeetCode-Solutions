
def solve_n_queens(n)
  @ans = []
  board = []
  for i in 0..n-1 do
    board[i] = '.' * n
  end
  pp board
  row = 0
  backtrack(board,row,n)
  pp @ans.length
  @ans
end

def backtrack(arr, row, n)
  if row == n
    @ans.push(arr.map { |s| s.dup })
    return
  end
  
  n.times do |c|
    if is_valid(arr, row, c, n)
      arr[row][c] = 'Q'
      backtrack(arr, row + 1, n)
      arr[row][c] = '.'
    end
  end
end

def is_valid(arr, row, col, n)
  # check for above rows in same column
  r = row
  while r >= 0
    return false if arr[r][col] == 'Q'
    r -= 1
  end
  
  # check for above left diagnomals
  r, c = row, col
  while c >= 0 && r >= 0
    return false if arr[r][c] == 'Q'
    r -= 1
    c -= 1
  end
  
  # check for above right diagnomals
  r, c = row, col
  while c < n && r >= 0
    return false if arr[r][c] == 'Q'
    r -= 1
    c += 1
  end
  true
end


# def backtrack(board,row,n,posibilities={})
#   if row == n then return @ans.push(board) end
#   if posibilities.keys.length == 0 
#     pp "printintg "
#     posibilities = {"col" => [], "neg_diag" => [] }
#   end
#   for i in 0..n-1 do
#     # check if it's safe to store Q on that position
#     diag = row - i
#     if posibilities["col"].include?(i) || posibilities['neg_diag'].include?(diag)
#     else
#       posibilities['neg_diag'].push(diag)
#       posibilities['col'].push(i)
#       board[row][i] = 'Q'
#       backtrack(board, row + 1, n, posibilities)
#       board[row][i] = '.'
#       posibilities['neg_diag'].delete(diag)
#       posibilities['col'].delete(i)
#     end 
#   end  
# end

pp solve_n_queens(8)