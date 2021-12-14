def range_sum_bst(root, low, high)
    if root == nil then return 0 end
    sum = 0
    if root.val <= high && root.val >= low then sum = sum + root.val end
    left_sum = range_sum_bst(root.left,low,high)
    right_sum = range_sum_bst(root.right,low,high)
    return sum = sum + left_sum + right_sum
        
end
