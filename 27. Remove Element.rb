def remove_element(nums, val)
    k=0
    nums.reject! { |item| item==val}
    nums.reject! { |item| item.nil? || item == '' } 
    k=nums.length
return k
end


 nums = [0,1,2,2,3,0,4,2]; val = 2
 pp remove_element(nums,val)
 print nums
