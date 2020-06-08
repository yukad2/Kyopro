n = gets.chomp.split(" ").map(&:to_i)
arr = Array.new
while line = $stdin.gets
arr << line.to_i
end
peak=[]
tani=[]
up=1
(n[0]-1).times{|t|
if up == 1
    if arr[t]<arr[t+1]
      t+=1
    else
      peak.push(t)
      up=0
      t+=1
    end
else
    if arr[t]<arr[t+1]
        tani.push(t)
        up=1
        t+=1
    else
        t+=1
    end
end
}
tani.push(0)
ans = 0
peak.each_with_index{|x,t|
    tanin=tani[t]
    if arr[x]-arr[tanin]>n[1] or arr[x]-arr[tanin+1]>n[1]
        ans += 1
    end
}
p ans