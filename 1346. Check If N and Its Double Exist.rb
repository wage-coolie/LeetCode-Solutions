def check_if_exist(arr)
  table = {}
  result = false
  (0..arr.size - 1).each do |i|
    table[i] = arr[i] * 2
  end
  (0..arr.size - 1).each do |i|
    table.each do |e|
      next if e[0] == i
      result = true if arr[i] == e[1]
    end
  end

  return result
end


 arr = [10,2,5,3,4,8,26,13]
 check_if_exist(arr)