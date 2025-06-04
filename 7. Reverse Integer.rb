def reverse(x)
    x = x.to_s
    if x[0] == '-' 
        x = (x[0]+x[1..].reverse).to_i 
    else
        x = x.reverse.to_i
    end
    (-2**31 < x && x <2**31-1)?(x):(0) 
        
end
