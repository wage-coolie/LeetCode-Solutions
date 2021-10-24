





def two_sum(nums, target)
  result = []

  return if target.nil? || nums.length == 0

  nums_hash = {}
  nums.flatten!
  nums.each_with_index do |num, index|
    previous_index = nums_hash[(target-num)]
  
    if !previous_index.nil?
      result << previous_index
      result << index
      break
    end

    nums_hash[num] =  index
        pp nums_hash 
  end

  return result;
end

nums = [2,7,11,15], target = 26
pp two_sum(nums,target)
