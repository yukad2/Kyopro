s = gets.chomp
ans = 0
cnt = 0
(s.length).times{|i|
    if s[i] == "W"
        ans += (i - cnt)
        cnt += 1
    end
}
p ans