def merge_two_lists(l1, l2)
=begin
    if !l2 
     return l1 
    else
        if l1.val==l2.val
            temp=l1.next
            temp1=l2.next
            l1=l2
            l2.next=temp
            l2=temp1
            merge_two_lists(l1,l2)
        end
        if l1.val<l2.val
            temp=l1.next
            temp1=l2.next
            l1=l2
            l2.next=temp
            l2=temp1
            merge_two_lists(l1,l2)
        end
        if !l1.val
            return l2
end
end
=end
    unless(l2.val==nil)
        if l1.val==l2.val
            temp=l1.next
            temp1=l2.next
            l1=l2
            l2.next=temp
            l2=temp1
        end
        if l1.val<l2.val
            temp=l1.next
            temp1=l2.next
            l1=l2
            l2.next=temp
            l2=temp1
        end
        if l1.val==nil
            temp=l1
            l1=l2
            l2=temp
        end
end

end

