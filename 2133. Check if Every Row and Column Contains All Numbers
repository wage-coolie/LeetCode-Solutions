def check_valid(matrix)
	# pp "matrix length is #{matrix.length} aqnd 1st row is #{matrix[0].length}"
    compare = (1..matrix.length).to_a
    # pp compare
    matrix.each do |row|
    	if row.sort != compare then return false end
    end
    matrix = matrix.transpose
    matrix.each do |row|
    	if row.sort != compare then return false end
    end
    return true
end
