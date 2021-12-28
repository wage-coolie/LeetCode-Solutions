def find_complement(num)
	num.to_s(2).tr('01', '10').to_i(2)
end


def find_complement(num)
    num = num.to_s(2)
    for i in 0..num.length-1
       if num[i] == '0' then num[i] = '1' ; next end
       num[i] = '0'
    end

    num.to_i(2)
end