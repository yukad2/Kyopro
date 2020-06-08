arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end

ans=Array.new(arr[0][0])
ans.fill(0)
arr.delete_at(0)
arr.length.times{|k|
if k%2!=0
    arr[k].each{|item|
        ans[item-1]+=1
    }
end
}
wa =0
ans.each{|k|
    if k==0 then
        wa+=1
    end
}
puts wa