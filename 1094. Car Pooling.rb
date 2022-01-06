


def car_pooling(trips, capacity)
    map = Array.new(1001) { |i| i = 0  }
    trips.each do |trip|
    	for i in trip[1]..trip[2]-1
    		map[i] = map[i]+trip[0]
    	end
    	if map[trip[1]..trip[2]-1].max > capacity then return false end
    end
    return true
end

# trips = [[2,1,5],[3,3,7]]
# capacity = 4


# trips = [[2,1,5],[3,3,7]]; capacity = 5

trips = [[2,1,5],[3,5,7]]
capacity = 3


pp car_pooling(trips,capacity)