


def at_most_n_given_digit_set(digits, n)
    digit_length = n.to_s.length
    if digit_length == 1 
        digits.map! {|e| e if e.to_i <= n}
        return digits.compact.size
    end
    formed_num = []
    for i in 1..digit_length-1
        a = digits.repeated_permutation(i).to_a.map! {|e| e = e.join.to_i }
        formed_num << a
    end
    pp " did thi"
    a = digits.repeated_permutation(digit_length).to_a.map! {|e| e = e.join.to_i }
    a.map! {|e| e if e <= n }
    a.compact!

    formed_num << a
    formed_num.flatten.size
end
# digits = ["1","4","9"]; n = 1000000000
# digits = ["7"]; n = 8
digits = ["1","2","3","4","5","6","7","8"]
n = 8363065

pp at_most_n_given_digit_set(digits,n)



# def at_most_n_given_digit_set(digits, n)
#     digit_length = n.to_s.length
#     if digit_length == 1 
#         digits.map! {|e| e if e.to_i <= n}
#         return digits.compact.size
#     end
#     formed_num = []
#     for i in 1..digit_length-1
#         a = digits.repeated_permutation(i).to_a.map! {|e| e = e.join.to_i }
#         formed_num << a
#     end
#     a = digits.repeated_permutation(digit_length).to_a.map! {|e| e = e.join.to_i }
#     a.map! {|e| e if e <= n }
#     a.compact!

#     formed_num << a
#     formed_num.flatten.size
# end