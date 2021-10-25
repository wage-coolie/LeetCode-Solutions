# could also be solved using 
# nums1=(nums1[0..m-1]+nums2[0..n-1]).sort


def merge(nums1, m, nums2, n)
    i = m-1
    j = n-1
    k = m+n-1
    
    while i >= 0 && j >= 0
        if nums2[j] >= nums1[i]
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        else
            nums1[k] = nums1[i]
            k -= 1
            i -= 1   
        end
    end
    
  while(j >= 0)
        nums1[k] = nums2[j]
        k -= 1
        j -= 1
    end
    return nums1
end

nums1 = [1,2,3,0,0,0]; m = 3; nums2 = [2,5,6]; n = 3;
pp merge(nums1,m,nums2,n)
