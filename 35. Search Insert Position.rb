

def search_insert(nums, target)
  if nums.length == 0 then return target end
  start = 0
  last = nums.length-1
  mid = 0
  while start <= last
    middle = start + (last-start) / 2
    if nums[middle] == target then return middle 
    elsif nums[middle] < target 
      start = middle + 1    
    else
      last = middle-1
  end
  
end 
 return start
end

nums = [1,3,5,6]
target = 978
pp search_insert(nums,target)