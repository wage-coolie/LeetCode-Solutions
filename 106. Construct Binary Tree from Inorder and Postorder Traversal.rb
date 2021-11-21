


# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
  if inorder.length == 1 && postorder.length == 1 
   if inorder != postorder then return nil end
   return root=TreeNode.new(postorder[-1]) ; root.left = nil ; root.right = nil
 end
 if inorder.length == 0 && postorder.length == 0 
   return nil
 end
    root = TreeNode.new(postorder[-1])
    rootpos = inorder.index(root.val)
    left_index = rootpos-1
    if left_index < 0 then left_index = 0 end
    left_inorder = inorder[0..(left_index)]  
    root.left = build_tree(left_inorder , postorder[0..(left_index)])
    right_inorder = inorder[(rootpos+1)..(inorder.length-1)]
    root.right = build_tree(right_inorder,postorder[rootpos..(postorder.length-2)])  

return(root)  

end

inorder = [1,2]; postorder = [2,1]
pp build_tree(inorder,postorder)