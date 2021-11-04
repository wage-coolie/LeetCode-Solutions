def longest_common_prefix(strs)
    if strs.size==0 then return [] end
    min=strs.sort_by { |x| x.length }[0].length-1
    size=strs.size-1
    result=[]
    pp "the result is #{result}"
    for i in 0..min
        pp "#{i} is i"
        counter=1
         for j in 0..size
            if strs[j][i]!=strs[0][i] 
                counter = 0
            end   
         end
        if counter!=0 
        result<<strs[0][i]
    else
        break
    end
end
return result.join
end



strs=["flower","flow","flight"]
pp longest_common_prefix(strs)

=begin
the best one

def longest_common_prefix(strs)
    return "" if strs.empty? 
    s = ""
    base = strs[0]
    for i in 0..base.length-1
        if strs.all?{|x| x[i] == base[i]}
            s += base[i]
        else
            break
        end
    end
    s
end


=end