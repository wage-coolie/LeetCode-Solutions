def running_sum(nums)
  for i in 1..nums.length-1 do 
    nums[i] = nums[i-1] + nums[i]
  end
    nums
end



def running_sum(nums)
  new_nums = [nums[0]]
  for i in 1..nums.length-1 do 
    new_nums[i] = new_nums[i-1] + nums[i]
      
  end
    new_nums
end
