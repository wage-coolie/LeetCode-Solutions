# @param {Integer} n
# @return {String[][]}
# Took a lot of time to debug cols to cols.dup in line 17. Ruby passes everything by reference.
#
def solve_n_queens(n)
  @ans = []
  @board_size = n
  # try to put a queen in each col and each row recursively
  solve([], 0)
  @ans
end

# solve for current solution (cols) and current row
def solve(cols, row)
  # cols array contains the col at which queen is placed in ith index row
  if row == @board_size
    @ans << format_cols(cols.dup)
    return
  end

  # iterate over each column
  0.upto(@board_size - 1).each do |col|
    # a queen can be put on this row and col as per current solution
    if valid?(cols, row, col)
      # put a queen on this row and col
      cols[row] = col
      solve(cols, row + 1)
      # if it reached here, that means above cols didn't result in final answer
      # remove last position of Queen from cols array
      cols.delete(col)
    end
  end
end

def valid?(cols, row, col)
  # check if any of the previous rows has queen on same col as current one
  return false if cols.include?(col)

  # check if any of the previous queens are on same row as current one
  # as we're putting queens on separate rows only. No 2 queens can be on same row

  # check if any of the previous queens are on the same diagonal as current one
  cols.each_with_index do |c, r|
    return false if row - r == (col - c).abs # col can be higher or lower
  end

  true
end

def format_cols(cols)
  arr = []
  cols.each do |col|
    str = '.' * cols.size
    str[col] = 'Q'
    arr << str
  end
  arr
end
