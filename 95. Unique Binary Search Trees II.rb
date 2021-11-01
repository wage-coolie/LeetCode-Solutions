class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end


def generate_tree(start, n)
    trees = []
    
    if start > n
        trees.push(nil)
        return trees
    end
    
    start.upto(n) do |i|
        left_trees = generate_tree(start, i-1)
        right_trees = generate_tree(i+1, n)
        
        for left in left_trees do 
            for right in right_trees do 
                root = TreeNode.new(i)
                root.left = left
                root.right = right
                trees.push(root)
            end
        end
    end
    trees

end

pp generate_trees(3)


=begin
    
def generate_tree(start, n)
    trees = []
    
    if start > n
        trees.push(nil)
        return trees
    end
    
    start.upto(n) do |i|
        left_trees = generate_tree(start, i-1)
        right_trees = generate_tree(i+1, n)
        
        for left in left_trees do 
            for right in right_trees do 
                root = TreeNode.new(i)
                root.left = left
                root.right = right
                trees.push(root)
            end
        end
    end
    trees

end
=end    
