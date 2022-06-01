def merge_k_lists(lists)
    if lists.length == 0 then return [] end
    arr = []
    for i in 0..lists.length-1
        while lists[i]!=nil
            arr << lists[i].val
            lists[i] = lists[i].next 
        end
    end
    arr.sort
end
