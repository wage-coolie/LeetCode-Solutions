# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    if l1 == nil && l2 == nil then return 0 end
    number1 = ''
    number2 = ''
    while (l1 != nil) 
        number1<<(l1.val.to_s)
        l1 =  l1.next
    end    
    while (l2 != nil) 
        number2<<(l2.val.to_s)
        l2 =  l2.next
    end 
    number1.reverse!
    number2.reverse!
    result = (number1.to_i + number2.to_i).to_s.reverse
    head = ListNode.new(result[0].to_i)
    prev = head
    
    for i in 1..result.length-1
        prev.next = ListNode.new(result[i].to_i)
        prev = prev.next
    end
    head

end