def min_time_to_visit_all_points(points)
  seconds = 0
  points.each_with_index do |point, i|
    break if points[i+1].nil?
    seconds += [(point[0] - points[i+1][0]).abs, (point[1] - points[i+1][1]).abs].max
  end
  seconds
end