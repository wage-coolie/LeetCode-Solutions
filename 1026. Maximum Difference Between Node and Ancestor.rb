def max_ancestor_diff(root)
    #if root == nil then return 0 end
    return helper(root,root.val,root.val)
end

def helper(root,min,max)
    if root == nil then return max-min end
    max = [root.val,max].max
    min = [root.val,min].min
    left = helper(root.left,min,max)
    right = helper(root.right,min,max)
    return [left,right].max    
end