n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
ans = [0,0]
998.times{|i|
    i += 2
    tmp = 0
    a.each{|item|
        if item % i == 0
            tmp += 1
        end
    }
    if ans[1] < tmp
        ans=[i,tmp]
    end
}
p ans[0]