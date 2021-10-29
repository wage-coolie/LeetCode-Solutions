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
def reverse_list(head, prev = nil)
  return prev unless head

  next_node = head.next
  head.next = prev
  reverse_list(next_node, head)
end
def reverse_list(head)
    prev = nil
    
    while (head) 
        next_node = head.next
        head.next = prev
        prev = head
        head = next_node
    end
    
    # puts prev --> would print out a ListNode object with a val = 5
    return prev 
end

def reverse_list(head)
    runner, new_root = head, nil
    while(runner) 
       new_root, new_root.next, runner = runner, new_root, runner.next 
    end
    new_root
end
