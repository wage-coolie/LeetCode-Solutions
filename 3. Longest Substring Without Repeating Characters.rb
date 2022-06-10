# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
    if s.length < 2 then return s.length end
    i = 0
    max = 0
    found = []
    for j in 0..s.length-1
      if found.include?(s[j])
        if(found.size > max) then max = found.size end  
        found = found[found.index(s[j])+1..]
        found.push(s[j])
      else
        found.push(s[j])
      end
      # pp "found is #{found}" 
    end
    found.length < max ? max : found.length
end


s = "ohomm"

pp length_of_longest_substring(s)