def get_row(row_index)
    result=[1]
    prev=1
    for i in 1..row_index
    value = (prev * row_index/i ).round
    row_index=row_index-1
    prev = value
    result.push(value)
    end
    return result
    end




a = 3
pp get_row(4000)

=begin
For example to calculate row 5 elements
5C0, 5C1, 5C2, 5C3, 5C4, 5C5
1, 5, 10, 10, 5, 1
that can also be written as
1 1*(5/1), 5*(4/2), 10*(3/3), 10*(2/4), 5*(1/5)
which is nothing but
previous value * some fraction
It can be generalized as
previousValue * rowIndex--/columnIndex++
I hope this will help you to understand.
=end