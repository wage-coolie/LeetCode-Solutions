


=begin

def contains_duplicate(nums)
  arr = []
  for i in 0..nums.length-1    
    if arr.include?(nums[i]) 
      return true
    else
      arr.push(nums[i])
    end
  end
  return false
end
=end
def single_number(nums)
    nums = nums.tally
    return nums.key(1)
end

 nums = [4,1,2,1,2]

pp single_number(nums)