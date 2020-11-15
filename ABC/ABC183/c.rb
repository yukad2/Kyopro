n, k = gets.chomp.split.map(&:to_i)
t = []
parms = []
n.times{|i|
    parms << i
    t << gets.chomp.split.map(&:to_i)
}
parms.delete_at(0)
ans = 0
parms.permutation(n-1){|item|
    time = 0
    prev = 0
    item.each{|nex|
        time += t[prev][nex]
        prev = nex
    }
    time += t[prev][0]
    if k == time
        ans += 1
    end
}
p ans