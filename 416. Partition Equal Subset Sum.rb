

def can_partition(nums)
    half_sum = 0
    nums.each {|number| half_sum = half_sum + number }
    if half_sum.odd? then return false end
    half_sum = half_sum / 2
    dp_table = Array.new(nums.length+1) { |i| i = Array.new(half_sum+1) }
    for i in 0..nums.length
        for j in 0..half_sum
            if(i == 0 || j == 0)
                dp_table[i][j] = false
            elsif(nums[i-1] > j)
                dp_table[i][j] = dp_table[i-1][j]
            elsif(nums[i-1] == j)
                dp_table[i][j] = true
            else
                dp_table[i][j] = dp_table[i-1][j] || dp_table[i-1][j-nums[i-1]]
            end
        end
    end
    pp dp_table
    return dp_table[nums.length][half_sum]
end

nums = nums = [1,2,3,5]

pp can_partition(nums)