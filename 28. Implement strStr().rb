def str_str(haystack, needle)
    if needle.length == 0 then return 0 end
    result = haystack.index(needle) 
    if result != nil
        return result
    else
        return -1
    end
end
