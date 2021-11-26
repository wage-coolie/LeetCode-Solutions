

def find_median_sorted_arrays(nums1, nums2)
  array = (nums1+nums2).sort
  median = 0
  if array.length%2 == 0
    median = (array[array.length/2].to_f+array[(array.length/2)-1].to_f)/2
  else
    median = array[array.length/2]
  end 
    return median
end

nums1 = [1,3]
nums2 = [2]

pp find_median_sorted_arrays(nums1,nums2)