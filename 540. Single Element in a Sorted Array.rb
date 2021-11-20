


def single_non_duplicate(nums)
  if nums.length == 1 then return nums[0] end
  result = 0
  for i in 0..nums.length-1
    if ((nums[i] != nums[i-1]) && (nums[i] != nums[i+1])) then result = nums[i] end
  end    
  return(result)
end


nums = [1,1,2,3,3,4,4,8,8]

pp single_non_duplicate(nums)