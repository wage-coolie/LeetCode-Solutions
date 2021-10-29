def search_bst(root, val)
    if root==nil
        return nil
    end
    if root.val == val
         return root
    elsif root.val<val
        search_bst(root.right,val)
    else 
        search_bst(root.left,val)     
    end
end

=begin
    
    RUBY ITERATIVE METHOD
    def search_bst(root, val)
    node = root
    
    until node.nil?
        if node.val > val
            node = node.left
        elsif node.val < val
            node = node.right
        else
            return node
        end
    end
    
    return nil
end

    
end
