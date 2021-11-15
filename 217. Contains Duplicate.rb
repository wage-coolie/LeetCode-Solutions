


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
def contains_duplicate(nums)
  nums = nums.tally
  pp nums
  return nums.any? {|key,value| value>=2}
  
end

nums = [1,2,3,1]

pp contains_duplicate(nums)