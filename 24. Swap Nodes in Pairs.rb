
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
def swap_pairs(head)
   temp = ListNode.new 0
   temp.next=head
   current=temp
   while current.next && current.next.next
      first_node = current.next
      second_node = current.next.next
      first_node.next=second_node.next
      current.next=second_node
      current.next.next = first_node
      current=current.next.next
   end
   return temp.next
end

=begin
   
def swap_pairs(head)
    pre = dummy = ListNode.new 0
    pre.next = head
    while a = pre.next and b = a.next
        c = b.next
        ((pre.next = b).next = a).next = c
        pre = a
    end
    dummy.next
end
end