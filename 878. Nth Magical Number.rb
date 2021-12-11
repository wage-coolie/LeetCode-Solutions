def nth_magical_number(n, a, b)
    low = 1
    high = 10**18+1
    while low<high
        m = low + (high-low) / 2
        position = pos(m,a,b)
        (position<n)?(low=m+1):(high = m)
    end
    return low % (10**9+7)
end

def lcm(a,b)
    return (a*b)/a.gcd(b)
end
def pos(n,a,b)
    return (n/a) + (n/b) - (n/lcm(a,b))
end   

n = 4
a = 2
b = 3

pp nth_magical_number(n,a,b)


=begin


### Brute force approach

def nth_magical_number(n,a,b)
    a_table = []
    b_table = []
    for i in 0..n
        a_table[i] = a*i 
        b_table[i] = b*i
    end
    result = (a_table+b_table).sort.uniq
    pp result
    return(result[n])
end

=end