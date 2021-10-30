def fib(n)
    if n==1 || n==0 then return n end 
    result = Array.new(2){|n| n}
    for i in 2..n
        result[i]=result[i-1]+result[i-2]
    end
    return result[n]
end
n = 4

pp fib(10)