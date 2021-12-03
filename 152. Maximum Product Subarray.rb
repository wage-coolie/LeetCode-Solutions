def max_product(nums)
    curMax, curMin = 1, 1
        res = nums[0]
        
        for n in nums
            vals = [n, n * curMax, n * curMin]
            curMax, curMin = vals.max, vals.min
            res = [res, curMax].max
        end   
        return res

end