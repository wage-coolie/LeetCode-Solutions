




def find_num_of_valid_words(words, puzzles)
    # 1. word to binary
    # 2. words by first letter of puzzles, first_letter['a'] = {2 => 1, 345 => 2}
    # 3. each puzzle, count 
    count_by = Hash.new(0)
    a_ord = 'a'.ord
    words.each do |word|
        list = word.split('').uniq.map{|x| x.ord - a_ord}
        next if list.size > 7
        bits = list.reduce(0) do |sum, x| 
            sum + (1 << x)
        end
        count_by[bits] += 1
    end
    
    puzzles.map do |puzzle|
        first = puzzle[0].ord - a_ord
        list = puzzle.split('').map {|x| x.ord - a_ord}
        list.delete first
        count = 0
        (0..list.size).each do |size|
            list.combination(size).each do |arr|
                bit = arr.reduce(0) do |sum, x|
                    sum + (1 << x)
                end
                bit += 1 << first
                count += count_by[bit]
            end
        end
        count
    end
end

=begin

BRUTE FORCE APPROACH 
  
def find_num_of_valid_words(words, puzzles)
  words_broken = []  
  puzzle_broken =[] 
  for i in 0..words.length-1
    words_broken[i] = words[i].split("").uniq
  end
  for i in 0..puzzles.length-1
    puzzle_broken[i] = puzzles[i].split("").uniq
  end
  answer =[]
  for i in 0..puzzles.length-1
    result = 0
    for j in 0..words.length-1   
      if (words_broken[j].include?(puzzle_broken[i][0]))
      if (words_broken[j] - puzzle_broken[i] == []) then result = result+1 end
      end
    end 
    answer[i]=result
  end
return answer




USING A SEPERATE LIST

def find_num_of_valid_words(words,puzzles)
  words_dict = {} ; puzzles_dict = {}
  for i in 0..words.length-1
    current = words[i].split("").uniq.join("")
    words_dict[words[i]]=[]
    for j in 0..current.length-1
      words_dict[words[i]].push((97-current[j].ord).abs)
    end
  end
  for i in 0..puzzles.length-1
    current = puzzles[i]
    puzzles_dict[current]=[]
    for i in 0..current.length-1
      puzzles_dict[current].push((97-current[i].ord).abs)
    end
  end
  char_list = ''
  puzzles.each do |puzzle|
    char_list = char_list+puzzle[0]
  end
  char_list = char_list.split('').uniq
  list = {}
  char_list.each do |char|
    list[char]=[]
    words.each do |word|
      if word.include?(char) then list[char].push(word) end 
    end
  end
  answer = []
  for i in 0..puzzles.length-1
    result = 0
    list[puzzles[i][0]].each do |word|
      if words_dict[word] - puzzles_dict[puzzles[i]] == [] then result = result+1 end
    end
    answer[i]=result
  end
  return(answer)
end



end

=end
words = ["aaaa","asas","able","ability","actt","actor","access"]
puzzles = ["aboveyz","abrodyz","abslute","absoryz","actresz","gaswxyz"]

#words = ["apple","pleas","please"]
#puzzles = ["aelwxyz","aelpxyz","aelpsxy","saelpxy","xaelpsy"]

pp find_num_of_valid_words(words,puzzles)

