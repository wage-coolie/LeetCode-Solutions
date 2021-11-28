

def all_paths_source_target(graph,curr = 0)
  if curr == graph.size-1 then return [graph.length-1] end
  result = []
  graph[curr].each do |value|
    all_paths_source_target(graph,value).each do |path|
            result << ([curr] + path.to_a)
        end
    end
  return  result
  end



graph = [[4,3,1],[3,2,4],[3],[4],[]]
pp all_paths_source_target(graph)