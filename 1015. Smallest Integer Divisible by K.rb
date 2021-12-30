


def smallest_repunit_div_by_k(k)
    if k.even? then return -1 end
    n = '1' * k.to_s.length
    remainder_array = []
    while n.to_i%k != 0
        temp_remainder = n.to_i % k
        # pp "#{temp_remainder} and n is #{n}"
        pp "#{remainder_array} and tremp is #{temp_remainder} for #{n}"
        if remainder_array.include?(temp_remainder.to_s[-1].to_i)
            return -1 
        end
        remainder_array.push(temp_remainder.to_s[-1].to_i)
        n = n + '1'
    end
         
        n.length
end
# k = 19927
k=17
pp smallest_repunit_div_by_k(k)