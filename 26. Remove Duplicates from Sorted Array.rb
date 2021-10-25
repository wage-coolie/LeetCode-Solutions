def remove_duplicates(nums)
  nums.uniq!
  k=nums.length
  return k
end

nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
pp remove_duplicates(nums)
print nums

