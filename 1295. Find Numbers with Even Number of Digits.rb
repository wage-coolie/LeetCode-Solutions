

# faster than 100 % of ruby solution

def find_numbers(nums)
    result=0
    i=0
    for i in 0..nums.length-1
      if nums[i].to_s.length.even? then result=result+1 end
    end
    return result
end

def find_numbers1(nums)
    result=0
    i=0
    for i in 0..nums.length-1
      counter=0 ; n=nums[i];
      while n>0 
        n=n/10
        counter = counter + 1
      end
      if counter%2==0 then result = result+1 end
    end
    return result
end
def find_numbers2(nums)
    result = nums.map { |n| n.digits.size }
    res = 0
    result.each do |num|
        res += 1 if num.even?
    end
    res
end

nums = [12,345,2,6,7896]
pp find_numbers1(nums)
