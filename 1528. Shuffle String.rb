s = "codeleet", indices = [4,5,6,7,0,2,1,3]



def restore_string(s, indices)
    result = ''
    for i in 0..indices.length-1
        result<<(s[indices.find_index(i)])
    end
    return result
    
end