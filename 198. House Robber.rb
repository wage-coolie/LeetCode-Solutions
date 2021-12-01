def rob(nums)
    if nums.length == 0 then return 0 end
    dp = [0 , nums[0]]
    for i in 1..nums.length-1
        dp [i+1] = [dp[i-1]+nums[i],dp[i]].max
    end
    result = dp[-1]

end

nums = [1,2,3,1]

pp rob(nums)