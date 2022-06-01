def get_smallest_string(n, k)
    word = Array.new(n) { |i| i='' }
    index = ('a'..'z').to_a
    (n-1).downto(0) do |i| 
    	counter = 26
    	while true do
    		if (k-counter) >= i then break end
    		counter = counter - 1
    	end
    	k = k - counter
    	word[i] = index[counter-1]
    	# word[i] = counter
    end
    word.join()
end

