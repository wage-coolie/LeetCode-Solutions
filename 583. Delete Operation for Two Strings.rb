def min_distance(word1, word2)
  length_a = word1.length
  length_b = word2.length
  dp_array = Array.new(length_a + 1) { |i| i = Array.new(length_b + 1) { |j| j = 0 } }
  
  dp_array[0].map!.with_index { |data, i|
    data = i
  }
  for i in 0..dp_array.length-1 
    dp_array[i][0] = i
  end

  for i in 1..dp_array.length-1
    for j in 1..dp_array[0].length-1
      if word2[j-1] == word1[i-1]
        dp_array[i][j] = dp_array[i-1][j-1]
      else
        dp_array[i][j] = [dp_array[i][j-1],dp_array[i-1][j]].min + 1
      end
    end
  end

  dp_array[length_a][length_b]
end