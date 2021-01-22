n,k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i).group_by(&:itself).map{ |key,value| [key, value.count] }.to_h
i = 0
last = a[0]
if last == nil
    print "0\n"
    exit
end
if last > k
    last = k
end
ans = 0
while i < n do
    now = a[i]
    if now == nil
        ans += last *i
        break
    end
    if now < last
        ans += (last-now)*i
    end
    last = (now<last)? now : last
    i+=1
end
p ans