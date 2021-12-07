def plus_one(digits)
   result = (digits.join.to_i+1).to_s.split('').map!{|a| a.to_i}
end

digits = [1,2,3]

pp plus_one(digits)