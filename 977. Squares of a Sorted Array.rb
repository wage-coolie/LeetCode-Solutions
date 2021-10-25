def sorted_squares(nums)
    nums.map! { |e| e=e*e }
    nums.sort
end

nums = [-4,-1,0,3,10]
pp sorted_squares(nums)
