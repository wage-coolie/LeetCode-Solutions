# @return {String}




def multiply(num1, num2)\
  # this method is by straight forward converting, which is not what was instructed in the question
    result = (Integer(num1)*Integer(num2)).to_s
    return result
end

def multiply(num1, num2)
  dict = {}
  (0..9).each {|x| 
    value=x.to_s
    dict[value] = x }
  passed1=0 ; passed2 = 0;
  for i in 0..num1.length-1 do
    passed1 = passed1 * 10 + dict[num1[i]]
  end
  for i in 0..num2.length-1 do
    passed2 = passed2 * 10 + dict[num2[i]]
  end
  result = passed1 * passed2
  new_result =''
  dict1 = {}
  dict.each {|key,value| dict1[value]=key}
  if result == 0 then return dict1[result] end 
    pp "euigt"
  while result>0 do
    mod_value = result%10
    new_result =  dict1[mod_value] + new_result 
    result = result/10
  end
  return new_result
end


num1 = "0"
num2 = "0"

pp multiply(num1,num2)