
def duplicate_zeros(arr)
  counter = 0
  size=arr.size
  loop do 
    puts " counter is #{counter}"
    break if counter >= size-1
    if arr[counter] == 0 
      if counter == (size-2)
        arr[counter+1]=0
        counter=counter+1
      else
        arr[counter+2..size-1]=arr[counter+1..size-2]
        arr[counter+1]=0
        counter=counter+1
        end
      end
      counter=counter+1
end
return arr
end
arr=[1,5,2,0,6,8,0,6,0]
pp duplicate_zeros(arr)
