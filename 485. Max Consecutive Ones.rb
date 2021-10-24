

def find_max_consecutive_ones(nums)
  i=0
  temp = 0 
  result = 0
  size=nums.length
  loop do
    break if i==size
    if nums[i]==0
      temp=0
    else
      temp=temp+1
      if result<temp then result=temp end
  end
      i=i+1
  end
  return result
end


