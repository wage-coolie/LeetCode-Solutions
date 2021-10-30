
def max_depth(root)
    if root==nil then return 0 end
    left_height=max_depth(root.left)
    right_height=max_depth(root.right)
    return [left_height,right_height].max+1
end
end

pp climb_stairs(10)