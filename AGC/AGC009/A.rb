n = gets.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end


sum=0
n.times{|t|
    k=n-t-1
    if ((arr[k][0]+sum)%arr[k][1])==0 then
        num = 0
    else
        num=(arr[k][1] -((arr[k][0]+sum)%arr[k][1]))
    end
    sum+=num
}
print sum