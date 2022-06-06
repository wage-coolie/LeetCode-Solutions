# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)

    list= {}
    while(headA) 
       list[headA] = nil
       headA = headA.next  
    end

    while(headB)
        if list.include?(headB) then return headB end
        headB = headB.next
    end
    nil
end