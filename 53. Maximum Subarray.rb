

def max_sub_array(nums)
  if nums.length == 1 then return nums[0] end
  if nums.length == 0 then return 0 end
    prefix = nums[0]
    currentSum = 0
    for i in 0..nums.length-1
    if currentSum<0 then currentSum=0 end 
      currentSum = currentSum+nums[i]
      prefix = [currentSum,prefix].max
    end
    return prefix
end

nums = [-2,1,-3,4,-1,2,1,-5,4]
pp max_sub_array(nums)