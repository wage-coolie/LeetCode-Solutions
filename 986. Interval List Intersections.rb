
def interval_intersection(first_list, second_list)
   if first_list.length == 0 || second_list.length == 0 then return(ans = []) end 
    ans = []
    i = j = 0
    while(i<first_list.length && j<second_list.length)
      pp "i is #{i} , j is #{j}"
      low = [first_list[i][0], second_list[j][0]].max
      high = [first_list[i][1],second_list[j][1]].min
      if low<=high then ans.append([low,high]) end
      if first_list[i][1]<second_list[j][1] 
        i = i+1
      else
        j = j+1
      end

    end
    return ans
end




first_list = [[0,2],[5,10],[13,23],[24,25]]
second_list = [[1,5],[8,12],[15,24],[25,26]]

pp interval_intersection(first_list,second_list)