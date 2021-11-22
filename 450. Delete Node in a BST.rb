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
# @param {Integer} key
# @return {TreeNode}



def delete_node(root, key)
  if root == nil then return nil end
  
    if key < root.val then root.left = delete_node(root.left,key) end
    if key > root.val then root.right = delete_node(root.right,key) end

    if root.val == key
      if root.left == nil && root.right == nil 
        return nil
      elsif root.left == nil
        temp = root.right
        root = nil
        return temp
      elsif (root.right == nil)
        temp = root.left
        root = nil
        return temp
      else
        node = root.right
         until node.left == nil
            prev = node
          node = node.left
          end 
      end
  
end

return root
end
=begin
    if root.left.val != nil
      root_l = root.left
      unless root_l.right == nil
        root_l = root_l.right
      end
      root.val = root_l.val
      root_l == root_l.left
    else
      root_r = root.right
      unless root_r.left == nil
        root_r = root_r.left
      end        
      rot.val = root_r.val
      root_r = root_r.right
    end
=end