def valid_mountain_array(arr)
  result = false
  increase = false
  decrease = false
  for i in 0..arr.length-1
    if arr[i]==arr[i-1] && i-1>=0 then return false end
    if arr[i]>arr[i-1] && i-1>=0
      if decrease==true then return false end 
      increase=true
    end
    if arr[i]<arr[i-1] && i-1>=0 then decrease=true end
      end
  if increase==true && decrease ==true then result = true end
  return result
  end



arr=[3,4,9,14,22,29,32,36,39,41,40,37,32,23,21,10,3]
pp valid_mountain_array(arr)