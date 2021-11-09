

def num_trees(n,node_result={})
  if n == 0 || n == 1 then return node_result[n]=1 end
  if node_result.key?(n) then return node_result[n] end
  result = 0
  for i in 1..n  
    left = i-1
    right = n-i
    result = result + num_trees(left,node_result)*num_trees(right,node_result)
  end
  node_result[n]=result
  pp node_result
  return result
end




pp num_trees(14)

