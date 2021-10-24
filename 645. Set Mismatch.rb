def getsresult(raw)
	temp = Array.new(raw.length+1)
	result = Array.new
	temp[0]=0
	raw.each do |n| 
		a = n.to_i
		if !temp[a] 
			temp[a]=a
		elsif temp[a]==a
			result<<a
	end
end

puts "#{temp}\n "
for i in (1..temp.length-1) do
	if !temp[i]
		result<<i
	end

end
puts "result ( repeating element , missing element) = #{result}"
end

print "Enter the numbers followed by a comma\nEg - 1,2,3,4,5,6\n"
String a=gets.chomp
data=a.split(",")
getsresult(data)
