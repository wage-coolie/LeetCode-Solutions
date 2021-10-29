

def sort_array_by_parity(nums)
   if nums.empty? || nums.size==1 then return nums end
   size=nums.size-1
   for i in 0..size
      if nums[i].odd?
         nums.push(nums[i])
         nums[i]="*"
      end
   end
   nums.delete("*")

   return nums
   # a.sort_by{|num| num%2} could be used too , easy and concise
end
nums =[]

pp sort_array_by_parity(nums)