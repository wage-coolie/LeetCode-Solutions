
def is_anagram(s, t)
    if s.length != t.length then return false end
    if (s.split('').sort == t.split('').sort)
        return true
    else 
        return false
    end
    end