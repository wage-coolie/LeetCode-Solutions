
def number_of_arithmetic_slices(nums)
	if nums.length < 3 then return 0 end
	dp = Array.new(nums.length) { |i| i=0  }
	ans = 0
	for i in 2..nums.length-1
		if (nums[i] - nums[i-1] == nums [i-1] - nums[i-2])
			dp[i] = dp[i-1] + 1
			ans = ans + dp[i]
		end
	end
	ans
end

# def number_of_arithmetic_slices(nums)
# 	if nums.length < 3 then return 0 end
# 	dp_array = [nil,nil,nil,1,3]
# 	start = 0 
# 	result = 0 
# 	curr_diff = nums[1] - nums[0]	
# 	for i in 0..nums.length-1
# 		if nums[i+1] == nil 
# 			if (i+1)-start > 2
# 				# pp "start is #{start}"
# 				find_dp((i+1)-start,dp_array,result)
# 			end
# 			break
# 		end
# 		if nums[i+1] - nums[i] == curr_diff 

# 		else
# 			if (i+1)-start > 2

# 				find_dp((i+1)-start,dp_array,result)
# 			end
# 			start = i
# 			if nums[i+1] != nil
# 				curr_diff = nums[i+1] - nums[i]
# 			end
# 		end
# 	end

# end


# def find_dp(size,dp_array,result)
# 	# p "#{size}, #{dp_array} , #{result}"
# end

nums = [1,2,3,4,5,879,6,10,14,18]
 p number_of_arithmetic_slices(nums)