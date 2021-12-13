def max_power(s)
    result = []
    prev = ''
    prev_counter = 0
    for i in 0..s.length-1
       if i == 0
            result[0] = 1
            prev = s[i]
           prev_counter = 1 
        elsif s[i] == prev
            result[i] = prev_counter+1
            prev_counter = prev_counter+1
            prev = s[i]
        else
            result[i] = 1
            prev_counter = 1
            prev = s[i]
        end
   end
    pp result 
    result.max
end