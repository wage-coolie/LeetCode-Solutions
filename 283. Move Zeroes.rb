def move_zeroes(nums)
  size=nums.size-1
    size.downto(0) { |i| 

      if nums[i]==0

        nums.delete_at(i)
        nums.push(0)
      end

    }
    
    return nums
end
nums = [0,0,1]

pp move_zeroes(nums)