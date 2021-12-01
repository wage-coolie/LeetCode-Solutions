def intersect(nums1, nums2)
    nums1_hash = {}
    nums2_hash = {}
    result = []
    for i in 0..nums1.length-1
        if nums1_hash.has_key?(nums1[i])
            nums1_hash[nums1[i]] = nums1_hash[nums1[i]] + 1
        else
            nums1_hash[nums1[i]] = 1
        end
    end
    for i in 0..nums2.length-1
        if nums2_hash.has_key?(nums2[i])
            nums2_hash[nums2[i]] = nums2_hash[nums2[i]] + 1
        else
            nums2_hash[nums2[i]] = 1
        end
    end
    nums1_hash.each { |key,value| 
       if nums2_hash.has_key?(key)
        min = [nums1_hash[key],nums2_hash[key]].min
        for i in 0..min-1
            result.append(key)
        end
       end
    }
    result
end
nums1 = [1,2,2,1]; nums2 = [2,2]

pp intersect(nums1,nums2)