def odd_even_list(head)
    if (head == nil) then return nil end
    odd = head; even = head.next; evenHead = even;
    while (even != nil && even.next != nil) do
        odd.next = even.next;
        odd = odd.next;
        even.next = odd.next;
        even = even.next;
    end
    end
    odd.next = evenHead;
    return head;
end






# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end