def can_reach(arr, start)
    dfs(arr,start,0)
end

def dfs(arr,start,count) 
    if count > arr.length then return false end
    if start >= arr.length || start < 0 then return false end
    if arr[start] == 0 then return true end
    return (dfs(arr,start+arr[start],count+1) || dfs(arr,start-arr[start],count+1))
end

arr = [4,2,3,0,3,1,2]; start = 5

pp can_reach(arr,start)