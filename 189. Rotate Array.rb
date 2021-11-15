




def rotate(nums, k)
  for i in 0..k-1
    number = nums.pop
    nums.unshift(number)
  end
  return nums
end




nums = [1,2,3,4,5,6,7]; k = 3
pp rotate(nums,k)
