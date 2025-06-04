
# @param {String} word
# @param {Integer} num_friends
# @return {String}
require 'debug'

# def answer_string(word, num_friends)
#   return word if num_friends == 1
#   max_length = (word.length - num_friends) + 1
#   largest = ''
#   (0..word.length-1).each do |index|
#     word_to_test = word[index..(index + max_length -1)]
# 	  largest = word_to_test if word_to_test > largest
#   end
#   largest
# end

# def answer_string(word, num_friends)
#   return word if num_friends == 1
#   max_length = (word.length - num_friends) + 1
#   largest = ''
#   highest_word = word.split('').uniq.max
# 	indices = []
# 	word.each_char.with_index { |char, index| indices << index if char == highest_word }
# 	(0..(word.count(highest_word)-1)).each do |iter|
#     word_to_test = word[indices[iter]..(indices[iter] + max_length -1)]
# 		largest = word_to_test if word_to_test > largest
# 	end
#   largest
# end

def answer_string(word, num_friends)
  return word if num_friends == 1
  max_length = (word.length - num_friends) + 1
  highest_word = ''
  # binding.break
	('a'..'z').to_a.reverse.each { |a| if word.include?(a) then highest_word = a ; break; end }
	highest_word
	largest = ''
	word.each_char.with_index do |char, index|
		if char == highest_word
    	word_to_test = word[index..(index + max_length - 1)]
			largest = word_to_test if word_to_test > largest
		end
 	end
  largest
end

puts answer_string('zabcdef', 3)
# puts answer_string('dbca', 2)
# puts answer_string1('gh', 1)


