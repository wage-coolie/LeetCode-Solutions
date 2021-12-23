



def find_order(num_courses, prerequisites)
    #first create adjacency list
    adj_list = Array.new(num_courses) { |i| i = []  }
    indegree = Array.new(num_courses) { |i| i = 0  }
    # we create indegree to
    for i in 0..prerequisites.length-1 
        adj_list[prerequisites[i][1]].push(prerequisites[i][0])
        indegree[prerequisites[i][0]] = indegree[prerequisites[i][0]] + 1 
    end
    # pp adj_list => [[1, 2], [3], [3], []]
    # pp indegree =>[0, 1, 1, 2]
    count = 0
    result = []
    queue = [].push(indegree.find_index(0)) # 0
    while queue != [nil] 
        count =  count + queue.length
        result.push(queue)
        queue.each {|a| indegree[a] = []}
        queue.each do |a|
            adj_list[a].each {|b| indegree[b] = indegree[b] - 1 } 
        end

        queue = []
        queue.push(indegree.find_index(0))
        pp "result is #{result}, and the queue is #{queue}"
    end
    # pp count
    (count == num_courses)?(result.flatten):([])
end


# numCourses = 4;prerequisites = [[1,0],[2,0],[3,1],[3,2]]
 numCourses = 65; prerequisites = []
 # numCourses = 3 ; prerequisites = [[1,0],[1,2],[0,1]]
pp find_order(numCourses,prerequisites)


#https://www.youtube.com/watch?v=tggiFvaxjrY