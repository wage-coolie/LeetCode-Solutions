def group_anagrams(strs)
    map = {}
    strs.each {|word| 
        key = word.chars.sort.join
        if map.has_key?(key)
            map[key].append(word)
        else
            map[key] = Array.new
            map[key].append(word)
        end
    }
    result = []
    map.each { |key,value| result.append(value)}
    pp map
    result

end

strs = ["ddddddddddg","dgggggggggg"]

pp group_anagrams(strs)