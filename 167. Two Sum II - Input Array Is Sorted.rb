def two_sum(numbers, target)
    sum = nil
    front = 0
    back = numbers.length-1
    while(sum != target)
        sum = numbers[front] + numbers[back]
        if sum > target
           back -= 1 
        else
            front +=1
        end
    end
    [front , back + 1]
end