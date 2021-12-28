
def middle_node(head)
    fast = head
    while fast != nil
        if fast.next == nil then break end 
        head = head.next
        fast=fast.next.next
    end
    head
end


# def middle_node(head)
#     arr = []
#     while head != nil
#         arr<<head
#         head = head.next
#     end
#     mid = arr.length/2
#     arr[mid]
# end
