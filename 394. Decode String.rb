

def decode_string(s)
    counter = 0 ; counter_string = '' ; result = '' ; number = ''
    #iterate from the back of the string
    (s.length-1).downto(0) do |n| 
        #if we get ] we increse counter by 1 and then dont do anything but skip to next iteration 
        if s[n] == ']'
            counter = counter + 1
            # we also add the ']' char to our stack array 
            counter_string = s[n] + counter_string
            next
        end
        #in this method we just skip ']' case
        if s[n] == '[' then next end
            #if we get a number we add it to number list
        if s[n].to_i > 0 || s[n].ord == 48
            number = s[n] + number
            # if the prev element from the number that is next in iteration ( and originally prev to number in s)
            # if not integer then we multiply the current stack till we reach ']'
            #then we add the string to result array
            # and remove the part before the first ']' from the stack ,we also remove the ']' itself too
            if s[n-1].ord > 57 

                number = number.to_i
                string_to_add = counter_string.slice(...counter_string.index("]"))
                counter_string = counter_string.sub((string_to_add+']'),"")
                string_to_add = string_to_add*number
                counter_string = string_to_add + counter_string
                number = ''
                #finally after this operation we decrement the counter to 0 
                counter = counter - 1
                result = string_to_add + result if counter == 0
                next
            end
            next
        end
        #if there is no ']' to take care of then we can put char directly to string
        if counter == 0 
            result =  s[n] + result 
        end
        #else we need to put it to stack
        if counter > 0 && s[n].ord != 48
            counter_string = s[n] + counter_string 
        end

    end
    
    result
end

s = "2[abc]3[cd]ef" # "abcabccdcdcdef"
s = "3[a2[c]]" #"accaccacc"
# s = "100[leetcode]" 
# s = "2[20[bc]31[xy]]xd4[rt]"
pp decode_string(s)


