

def product_except_self(nums)
    result = [1] 
    for i in 1..nums.length-1
      result[i] = result[i-1]*nums[i-1]
    end
    left_build = 1
    pp result
    (nums.length-1).downto(0) { |n| 
      pp "left build: #{left_build}"
      result[n] = result[n]*left_build
      left_build = left_build * nums[n]

     }
    return result

end

nums = [1,2,3,4]

pp product_except_self(nums)


=begin

BRUTE FORCE 

def product_except_self(nums)
    result = []
    length = nums.length-1
    result[0] = nums[1..].reduce(:*)
    result[length] = nums[..length-1].reduce(:*)
    for i in 1..length-1
      pp result[i] = nums[0..(i-1)].reduce(:*) * nums[i+1..nums.length-1].reduce(:*)
    end
    return result

end


USING 2 DIFFERENT ARRAYS I,E LEFT AND RIGHT
def product_except_self(nums)
    result = []
    right = [1] ; 
    left = Array.new(nums.length) { |i| i=0  }
    left[-1] = 1
    for i in 1..nums.length-1
      right[i] = right[i-1]*nums[i-1]
    end
    (nums.length-2).downto(0) { |n| 
      left[n] = left[n+1]*nums[n+1]
      }
      for i in 0..nums.length-1
        result[i] = left[i]*right[i]
      end
    return result

end

=end