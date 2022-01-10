
#r1 = 1,2,3         r2 = 4,5,6     ====  [1,4],[1,5],[1,6],[2,4],[2,5],[2,6],[3,4],[3,5],[3,7] 

def cherry_pickup(grid)
    result = 0 + grid[0][0] + grid[0][-1]
    robot1 = grid[0][r1_col = 0]
    robot2 = grid[0][r2_col = grid[0].length-1]
    for i in 1..grid.length-1
        combination = []
        ans = []
        combination[0] = (r1_col == 0 || r1_col-1 == r2_col-1)?(nil):([grid[i][r1_col-1],grid[i][r2_col-1]])
        combination[1] = (r1_col == 0 || r1_col-1 == r2_col)?(nil):([grid[i][r1_col-1],grid[i][r2_col]])
        combination[2] = (r1_col == 0 || r2_col == grid[0].length-1 || r1_col-1 == r2_col+1)?(nil):([grid[i][r1_col-1],grid[i][r2_col+1]])
        combination[3] = (r1_col == r2_col-1)?(nil):([grid[i][r1_col],grid[i][r2_col-1]])
        combination[4] = (r1_col == r2_col)?(nil):[grid[i][r1_col],grid[i][r2_col]]
        combination[5] = (r2_col == grid[0].length-1 || r1_col == r2_col+1)?(nil):([grid[i][r1_col],grid[i][r2_col+1]])
        combination[6] = (r1_col+1 == r2_col-1)?(nil):[grid[i][r1_col+1],grid[i][r2_col-1]]
        combination[7] = (r1_col+1 == r2_col)?(nil):[grid[i][r1_col+1],grid[i][r2_col]]
        combination[8] = (r2_col == grid[0].length-1 || r1_col+1 == r2_col+1)?(nil):([grid[i][r1_col+1],grid[i][r2_col+1]])
        combination.each_with_index do |comb,i|
            ans[i] = (comb.nil?)?(0):(comb.sum)
        end
        combination_index = ans.index(ans.max)
        if combination_index == 0
            r1_col = r1_col-1 ; r2_col = r2_col - 1 
        elsif combination_index == 1
            r1_col = r1_col-1 ; r2_col = r2_col 
        elsif combination_index == 2
            r1_col = r1_col-1 ; r2_col = r2_col + 1
        elsif combination_index == 3
            r1_col = r1_col ; r2_col = r2_col - 1
        elsif combination_index == 4
            r1_col = r1_col ; r2_col = r2_col 
        elsif combination_index == 5
            r1_col = r1_col ; r2_col = r2_col + 1  
        elsif combination_index == 6
            r1_col = r1_col + 1 ; r2_col = r2_col - 1
        elsif combination_index == 7
            r1_col = r1_col + 1 ; r2_col = r2_col 
        elsif combination_index == 8
            r1_col = r1_col + 1 ; r2_col = r2_col + 1
        end
        result = result + ans.max

    end
    result
end

# grid = [[3,1,1],[2,5,1],[1,5,5],[2,1,1]]
grid = [[1,0,0,0,0,0,1],[2,0,0,0,0,3,0],[2,0,9,0,0,0,0],[0,3,0,5,4,0,0],[1,0,2,3,0,0,6]] 

pp cherry_pickup(grid)





# if r1_col != 0 && grid[i][r1_col-1] == combination[combination_index][0]
#             r1_col = r1_col-1
#         elsif(grid[i][r1_col] == combination[combination_index][0]) 
#             r1_col = r1_col
#         else
#             r1_col = r1_col+1
#         end
#         if grid[i][r2_col-1] == combination[combination_index][1]
#             r2_col = r2_col-1
#         elsif(grid[i][r2_col] == combination[combination_index][1]) 
#             r2_col = r2_col
#         elsif (r2_col != grid[0].length-1)
#             r2_col = r2_col+1
#         end