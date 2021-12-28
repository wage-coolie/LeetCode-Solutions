


def k_closest(points, k)
    result = []
    for i in 0..points.length-1
        result<<([ ((points[i][0]-0)**2 + (points[i][1]-0)**2),points[i] ])
    end
    result = result.sort[0..k-1]
    result.map{|e| e=e[1]}
end

points = [[3,3],[5,-1],[-2,4]]
k = 2

pp k_closest(points,k)