def replace_elements(arr)
  arr.each_with_index.map{|v,i| arr[i]=arr[(i + 1),(arr.size - 1)].max }
  arr[-1]=-1
  return arr
end


arr = [17,18,5,4,6,1]
pp replace_elements(arr)


def replace_elements1(arr)
#2nd easier to read method

  if arr.size==1 then arr[0]=-1 end
    size = arr.size-1
  for i in 0..size
    if i==arr.length-1 then arr[i]=-1 ; next end
    if i==arr.length-2 then arr[i]=arr[i+1] ; next end 
    largest=arr[i+1]
    for j in i+2..size
      if arr[j]>largest then largest=arr[j] end
    end
    arr[i]=largest
  end  
  return arr 


end