
def find_disappeared_numbers(nums)
   if nums.empty? then return nums end
   size=nums.size
   nums.uniq! 
   new=Array.new(size) { |i| i+1 }
   return new-nums
end
nums = [4,3,2,7,8,2,3,1]

pp find_disappeared_numbers(nums)

#[*1..nums.length] - nums   BEST SOLUTION