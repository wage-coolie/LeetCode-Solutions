def insert_into_bst(root, val)
    if root == nil then return root = TreeNode.new(val) end
    final = root
    while true do
        # if root == nil then p "found it" ;root = TreeNode.new(val); break end
       if root.val < val 
           if root.right != nil
               root = root.right
           else
               root.right = TreeNode.new(val)
               break
           end
       else
           if root.left != nil
               root = root.left
           else
               root.left = TreeNode.new(val)
               break
           end
       end 
    end
        final
end
