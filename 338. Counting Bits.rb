
def count_bits(n)
	result = []
	for i in 0..n 
		result.push(i.to_s(2).count('1'))
	end
	result
end

p count_bits(19)