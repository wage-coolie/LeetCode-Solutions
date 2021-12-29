def connect(root)
    if root == nil then return root end
    arr = []
    arr.push(root)
    arr.each do |e|
        if e.left != nil then arr<<(e.left) end
        if e.right != nil then arr<<(e.right) end
    end
    n = arr.length+1
    iteration = 0
    while n != 1
        n = n/2
        iteration = iteration + 1
    end
    for i in 0..arr.length-2
        arr[i].next = arr[i+1] 
    end
    counter = 0
    for i in 1..iteration-1
        counter = counter + 2**i
       arr[counter].next = nil 
        
    end
    arr[0].next = nil
    return arr[0]
end
