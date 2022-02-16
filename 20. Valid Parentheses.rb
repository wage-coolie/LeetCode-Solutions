def is_valid(s)
    if s.length.odd? then return false end 
    stack = []
    for i in 0..s.length-1
       if stack.length == 0 && (s[i] == ')' || s[i] == '}' || s[i] == ']') then return false end
       if s[i] == ')' && stack[-1] == '('
           stack.pop
       elsif s[i] == '}' && stack[-1] == '{'
           stack.pop
       elsif s[i] == ']' && stack[-1] == '['
           stack.pop
       else 
            stack.push(s[i])
       end
     end
    if stack.length == 0 
        return true 
    else
        return false
    end
end

