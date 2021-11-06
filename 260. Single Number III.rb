

=begin
def single_number(nums)
  return 0 if nums.length == 0
  temp = {} 
  for num in nums
    if temp.has_key?(num)
        temp.delete(num)
    else
        temp[num]=num
    end        
  end  
  result=[]
  temp.each do |key,value|
    result.push(key)
  end
  return(result)
end
=end
def single_number(nums)
  return 0 if nums.length == 0
  result = []
  for num in nums
    if result.include?(num)
        result.delete(num)
    else
        result.push(num)
    end        
  end  
  return(result)
end

nums = [1,2,1,3,2,5]
pp single_number(nums)