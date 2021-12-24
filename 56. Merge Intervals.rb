def merge(intervals)
    if intervals.length == 0 || intervals.length == 1 then return(intervals) end
    pair = intervals[0]
    result = []
    for i in 1..intervals.size-1
        if intervals[i][0] <= pair[1] 
            pair = [[intervals[i][0],pair[0]].min,[intervals[i][1],pair[1]].max]
        else
            result<<pair
            pair = intervals[i]
        end
    end
    result<<pair
    result
end

intervals = [[1,3],[2,6],[8,10],[15,18]]
# intervals = [[1,4],[4,5]]
# intervals = [[1,4],[0,2],[3,5]]
# intervals = [[1,4],[1,4]]

pp merge(intervals)