# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def find_tilt(root)
    tilt_arr = []
    result = 0
    tilt_the_tree(root , tilt_arr)
    tilt_arr.each {|val| result = result + val}
end
    
def tilt_the_tree(root , tilt_arr)
    if root == nil then return 0 end
    left_sum = traverse_tree(root.left)    
    right_sum = traverse_tree(root.right)
    tilt_arr.append((left_sum-right_sum).abs)
    tilt_the_tree(root.left,tilt_arr)
    tilt_the_tree(root.right,tilt_arr)
end

def traverse_tree(root)
    if root == nil then return 0 end
    result = root.val
    left_val = traverse_tree(root.left)
    right_val = traverse_tree(root.right)
    return result+left_val+right_val
end