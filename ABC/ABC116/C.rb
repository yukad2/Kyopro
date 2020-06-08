n = gets.to_i
h = gets.chomp.split(" ").map(&:to_i)
h.push(0)
zero=Array.new(n+1).fill(0)
ans=0
while h!=zero do
    t=0
    while h[t]==0 do
        t+=1
    end
    while h[t+1]!=0 do
        h[t]-=1
        t+=1
    end
    h[t]-=1
    ans+=1
end
puts ans