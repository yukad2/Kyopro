n,m  = gets.chomp.split
n = n.to_i
m = m.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end
ans = Array.new(n-1)
lastarr=arr
last=[1]
while lastarr!=[] do
    nownum = last.dup
    last = []
    kari=[]
    nownum.each{|l|
        lastarr.each{|item|
            if item.include?(l)
                b = item.reject{|k|k==l}
                if ans[b[0]-1]!=nil
                    last.push(b[0])
                    ans[b[0]-1] = l
                end
            else
                kari.push(item)
            end
        }
        lastarr=kari
    }
end
p ans
