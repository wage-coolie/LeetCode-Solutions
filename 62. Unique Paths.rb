
def unique_paths(m, n)
    grid = Array.new(n)  { |i| Array.new(m) {|i| i=0 }}
    grid[0].each_with_index {|value,index| grid[0][index]=1 }
    grid.each {|i| i[0]=1 }
    for row in 1..n-1
      for column in 1..m-1
        grid[row][column] = grid[row-1][column] + grid[row][column-1]
      end
    end
    grid[n-1][m-1]
    end

m = 7; n = 3

pp unique_paths(m,n)