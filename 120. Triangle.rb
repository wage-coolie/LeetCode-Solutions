def minimum_total(triangle)
  # if triangle.size == 1 then return triangle[0][0] end
  (triangle.size-2).downto(0) { |i|
    triangle[i].map!.with_index { |e,index|
      e + triangle[i + 1][index] < e + triangle[i + 1][index + 1] ? e = e + triangle[i + 1][index] : e = e + triangle[i + 1][index + 1]
    }
  } 
  triangle[0][0]
end