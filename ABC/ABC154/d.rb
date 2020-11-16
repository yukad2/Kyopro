n, k = gets.chomp.split.map(&:to_i)
sai = gets.chomp.split.map{|item| (item.to_f+1)/2}
now = sai[0..(k-1)].sum
ans = now
(n-k).times{|i|
    now -= sai[i]
    now += sai[i+k]
    ans = (ans<now)? now : ans
}
p ans