
def rec(num)
    if num==1 then return num end
    return num*rec(num-1)
end

def kth_grammar(n, k)
    if n==1 && k==1 then return 0 end
    mid=2**n/2
    if k<=mid
        return kth_grammar(n-1,k)
    else
        return 1 ^ kth_grammar(n-1,k-mid) 
    end

end

n = 6
k =2
pp kth_grammar(n,k)

=begin
def kth_grammar(n, k)
    result = '0'
    for i in 2..n
    result=result.gsub(/\w/) { |letter| letter == "0" ? "01" : "10" }
    end
    return Integer(result[k-1])
end



=end
