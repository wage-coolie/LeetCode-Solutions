


def reorder_list(head)
    arr = []
    while head!=nil
        arr.push(head)
        head = head.next
    end
    # arr.each {|a| pp a.val}
    result = []
    for i in 0..(arr.length-1)/2
        result.push(arr[i])
        result.push(arr[arr.length-1-i])
        
    end
    for i in 1..result.length
        result[i-1].next = result[i] 
    end
    result[0]
end


def reorder_list(head)
    arr = []
    while head!=nil
        arr.push(head)
        head = head.next
    end
    # result = []
    for i in 0..(arr.length-1)/2
        arr[i].next = arr[arr.length-1-i]
        if i > 0
            arr[arr.length-1-(i-1)].next = arr[i] 
        end
        
    end
    arr[arr.length/2].next=nil
    arr[0]
end


def reorder_list(head)
    arr = []
    while head!=nil
        arr.push(head)
        head = head.next
    end
    arr[0].next = arr[arr.length-1-0]
    for i in 1..(arr.length-1)/2
        arr[i].next = arr[arr.length-1-i]
        arr[arr.length-1-(i-1)].next = arr[i]     
    end
    arr[arr.length/2].next=nil
    arr[0]
end