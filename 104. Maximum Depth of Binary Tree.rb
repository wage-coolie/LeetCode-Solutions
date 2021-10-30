def climb_stairs(n)
    if n==0 || n==1 || n==2 then return n end
    result=[0,1,2]
        for i in 3..n
            result[i]=result[i-1]+result[i-2] 
        end
        return result[n]
end

pp climb_stairs(10)