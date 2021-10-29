
def height_checker(heights)
   if heights.empty? || heights.size==1 then return 0 end
    sorted=heights.sort
    k=0
    pp sorted
    heights.each_with_index do | v,i|
    
      if heights[i]!=sorted[i] then k=k+1 end 
       
    end
    return k
 end

heights = [5,1,2,3,4]

pp height_checker(heights)



#  pp "comparing #{sorted[i]} with #{heights[i]}"