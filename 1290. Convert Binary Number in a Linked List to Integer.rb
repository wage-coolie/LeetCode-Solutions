def min_cost_to_move_chips(position)
    if position.length == 1 then return 0 end
    unique = position.uniq
    cost = []
    for i in 0..unique.length-1
        current_root = unique[i]
        root_cost = 0
        for j in 0..position.length-1
            difference = current_root - position[j]
            if difference%2 == 0
            else
                root_cost = root_cost + 1
            end
        end
        cost[i] = root_cost
    end
    return cost.min
end

#position=[1,2,3]
#position = [2,2,2,3,3]
position = [6,4,7,8,2,10,2,7,9,7]

pp min_cost_to_move_chips(position)


=begin
def min_cost_to_move_chips(position)
    
    root = position[0]
    cost = 0
    for i in 0..position.length-1
        difference = position[i]-root
        if difference%2 == 0 
        else
            cost =  cost + 1 
            pp "added cost by 1 for #{position[i]} and difference was #{difference}"
        end
    end
    cost
end
=end