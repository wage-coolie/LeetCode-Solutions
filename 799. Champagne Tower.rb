
def champagne_tower(poured, query_row, query_glass)
    poured_array = [poured]
    row = []
	for i in 0..query_row
		new_array = Array.new(poured_array.length+1) { |i| i=0.0 }
		for j in 0..i
			if poured_array[j] > 1
				row[j] = 1
				new_array[j] = new_array[j]+((poured_array[j]-1.0)/2)
				new_array[j+1] = new_array[j+1]+((poured_array[j]-1.0)/2)
			else
				row[j] = poured_array[j]
				poured_array[j] = 0 
			end
			# row[i] = (poured_array[i] - 1) / 2
		end
		poured_array = new_array
		# pp poured_array
	end
	row[query_glass]
end

poured = 2
query_row = 1
query_glass = 1
puts champagne_tower(poured,query_row,query_glass)

# 	g
# g 		|g|

# [2] , new_array = [0,0] , row = []

# 	1 		#[0.5,0.5]
# 0.5	  0.5






