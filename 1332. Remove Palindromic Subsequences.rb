def remove_palindrome_sub(s)
    if s.length == 1 then return 1 end
    if s.reverse == s then return 1 end 
    if s.include?('a') && s.include?('b') then return 2 end
    return 1
end