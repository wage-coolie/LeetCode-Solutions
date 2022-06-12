def min_operations(nums, x)
    sum = nums.sum
    if sum < x then return -1 end
    if sum == x then return nums.length end
    # the subarray summation we have to find
    target = sum - x
    start = 0
    last = 0
    ans = 0
    window_sum = 0
    while(last < nums.length)
        window_sum += nums[last]
        while(window_sum > target && start < last)
            window_sum -= nums[start]
            start +=1
        end
        if window_sum  == target
            ans = [ans, last-start+1].max
        end
        last += 1
    end
    ans == 0 ? -1 : nums.length - ans 
end


pp min_operations([1,1,4,2,3], 5)
pp min_operations([5,6,7,8,9], 4)
pp min_operations([3,2,20,1,1,3], 10)

pp min_operations([8828,9581,49,9818,9974,9869,9991,10000,10000,10000,9999,9993,9904,8819,1231,6309],134365)



# if nums[-1] > nums[0]
#             if x - nums[-1] < 0 || nums[0] < x
#                 x = x - nums[0]
#                 nums = nums[1..]
#             else
#                 x = x - nums[-1]
#                 nums = nums[..-2]
#             end
#         else
#             if x - nums[0] < 0 && nums[-1] < x 
#                 x = x - nums[-1]
#                 nums = nums[..-2]
#             else
#                 x = x - nums[0]
#                 nums = nums[1..]
#             end
#         end


# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
# def min_operations(nums, x)
#     counter = 0
#     while(true)
#         # pp "for nums = #{nums}"
#         counter += 1 
#         if x - nums[-1] == 0 || x - nums[0] == 0 then return counter end

#         if x - nums[0] < 0 && x - nums[-1] < 0 || nums.length == 0
#             then return -1
#         end
#         if nums[-1] > nums[0]
#             if x - nums[-1] > 0 
#                 x = x - nums[-1]
#                 nums = nums[..-2]
#             else
#                 x = x - nums[0]
#                 nums[1..]         
#             end
#         else
#             if x - nums[0] > 0 
#                 x = x - nums[0]
#                 nums = nums[1..]
#             else
#                 x = x - nums[-1]
#                 nums = nums[..-2]
#             end
#         end

#     end    
# end

# def min_operations(nums, x)
#     counter = 0
#     while(true)
#         # pp "for nums = #{nums}"
#         counter += 1 
#         if x - nums[-1] == 0 || x - nums[0] == 0 then return counter end

#         if x - nums[0] < 0 && x - nums[-1] < 0 || (nums.length == 2 && x - nums[0] > 0 && x - nums[-1] > 0 )
#             then return -1
#         end
#         if nums[-1] > nums[0]
#             if x - nums[-1] > 0 
#                 x = x - nums[-1]
#                 nums = nums[..-2]
#             else
#                 x = x - nums[0]
#                 nums[1..]         
#             end
#         else
#             if x - nums[0] > 0 
#                 x = x - nums[0]
#                 nums = nums[1..]
#             else
#                 x = x - nums[-1]
#                 nums = nums[..-2]
#             end
#         end

#     end    
# end