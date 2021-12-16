
def find_min_height_trees(n, edges)
    return [0] if n == 1
    return [0,1] if n == 2
    graph = {}
    n.times do |i|
        graph[i] = []
    end
    
    edges.each do |e|
        graph[e.first] << e.last
        graph[e.last] << e.first
    end


    leaves = []
    while graph.size > 2 
        
        leaves = []
        graph.each do |node|
            if node.last.size == 1
                leaves << node.first
            end
        end
        
        leaves.each do |leave|
            temp = graph[leave].first
            graph.delete(leave)
            graph[temp].delete(leave)
        end   
        
    end
    
    return graph.keys
end 
n = 6
edges = [[0,1],[0,2],[0,3],[3,4],[4,5]]
pp find_min_height_trees(n,edges)

