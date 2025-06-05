
# @param {String} word
# @param {Integer} num_friends
# @return {String}
require 'debug'

# def smallest_equivalent_string(s1, s2, base_str)
#   comparison_array = [[s1[0], s2[0]]]
#   result = ''
#   (1..s1.length-1).each do |i|
#     match_found = false
#     comparison_array.each do |comparison|
#       if comparison.include?(s1[i]) || comparison.include?(s2[i])
#         comparison.append(s1[i],s2[i]).uniq!
#         match_found = true
#       end
#       break if match_found
#     end
#     next if match_found
#     comparison_array << [s1[i], s2[i]]
#   end
#   comparison_array.map! { |a| a.sort }

#   base_str.each_char do |char|
#     match_found = false
#     comparison_array.each do |comparison|
#       if comparison.include?(char)
#         result << comparison[0]
#         match_found = true
#         break
#       end
#     end
#     result << char if !match_found
#   end
#   result
# end


def smallest_equivalent_string(s1, s2, base_str)
  comparison_array = [[s1[0], s2[0]]]
  result = ''
  (1..s1.length-1).each do |i|
    match_found = false
    matched_indexes = []
    # we compare all elements of compare_array, and where we find the duplicates, we add new elements in them
    comparison_array.each_with_index do |comparison, index|
      if comparison.include?(s1[i]) || comparison.include?(s2[i])
        matched_indexes.append(comparison)
        comparison = comparison.append(s1[i],s2[i]).uniq
        match_found = true
      end
    end
    # now we unionise all those matched elemets and delete their original ones from comparison array
    if match_found
      matched_indexes.each do |value|
        comparison_array.delete(value)
      end
      # when deletion is done, we add the new union back in to comparison_array

      comparison_array.append(matched_indexes.flatten.uniq)
    end
    # binding.break
    next if match_found
    comparison_array << [s1[i], s2[i]]
  end
  comparison_array.map! { |a| a.sort }
  pp comparison_array
  base_str.each_char do |char|
    match_found = false
    comparison_array.each do |comparison|
      if comparison.include?(char)
        result << comparison[0]
        match_found = true
        break
      end
    end
    result << char if !match_found
  end
  result
end

s1 = "parker";
s2 = "morris";
base_str = "parser";
pp smallest_equivalent_string(s1, s2, base_str)

s1 = "hello"; s2 = "world"; base_str = "hold"
pp smallest_equivalent_string(s1, s2, base_str)

s1 = "leetcode"; s2 = "programs"; base_str = "sourcecode"
pp smallest_equivalent_string(s1, s2, base_str)

# expected = 'azaaayauavayaaaavaauvaaaavaaaaaaaaaavaaaaayzaayaax'
s1 = "gmerjboftfnqseogigpdnlocmmhskigdtednfnjtlcrdpcjkbj"; s2 = "fnnafafhqkitbcdlkpiloiienikjiikdfcafisejgeldprcmhd"; base_str = "ezrqfyguivmybqcsvibuvtajdvamcdjpmgcbvieegpyzdcypcx"
# [[g,m]]
pp smallest_equivalent_string(s1, s2, base_str)

# expected =  "axawaaaaazaaaaaaaaaaaaaxaaaaawaaauxaaauaaayzaauaaa"
s1 = "cgokcgerolkgksgbhgmaaealacnsshofjinidiigbjerdnkolc"; s2 = "rjjlkbmnprkslilqmbnlasardrossiogrcboomrbcmgmglsrsj"; base_str = "bxbwjlbdazfejdsaacsjgrlxqhiddwaeguxhqoupicyzfeupcn"
pp smallest_equivalent_string(s1, s2, base_str)

