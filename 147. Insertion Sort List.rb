# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def insertion_sort_list(head)
    arr = []
    while head
        arr.append(head.val)
        head = head.next
    end
    arr.sort!
    arr = arr.collect {|x| ListNode.new(x)}
    for i in (1...arr.length)
        arr[i-1].next = arr[i]
    end
    arr[0]
end