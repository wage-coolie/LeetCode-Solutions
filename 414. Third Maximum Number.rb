
def third_max(nums)
   nums=nums.uniq.sort
   if nums.size<3
      pp nums
      return nums[-1]
   else
      return nums[-3]
   end

end

nums = [2,1]
pp third_max(nums)