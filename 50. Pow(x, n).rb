=begin

def my_pow(x, n)
    return 1 if n==0
    if n>0 
        return x * my_pow(x,n-1)
    else
        return (1/x*my_pow(x,n+1)).round(10)     
    end
end

def my_pow(x, n)
    return 1.0 if n==0
    return x if n==1
    if n < 0
        x = 1/x
        n = -n
    end
    return x**(n%2)*(my_pow(x, n/2)**2)
end

def my_pow(x, n)
    
    return 1 if n == 0

    n1 = n < 0 ? -n : n
    x1, res = x, 1
    
    while true
        res *= x1 if n1.odd?
        x1 *= x1
        n1 >>= 1
        break if n1 == 0
    end
    
    return (n < 0) ? 1 / res : res
end
=end

def my_pow(x,n)
    return 1 if n==0
    number=n.abs
    ans=1.0
    while number>0
        if number.odd?
            ans=ans*x
            number=number-1
        else
        x=x*x
        number=number/2
    end
end
pp " #{ans} is an"
    if n<0
        ans = (1/ans).round(10)
    end
return ans
end
x=5
n=-3

pp my_pow(x,n)

#result= 1/x**(n.abs)