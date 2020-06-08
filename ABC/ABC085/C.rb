n = gets.chomp.split(" ").map(&:to_i)
(n[0]+1).times{|t|
(n[0]-t+1).times{|k|
    if (10000*t + 5000*k + 1000*(n[0]-t-k) )== n[1] then
        print t," ",k," ",(n[0]-t-k)
        exit
    end
}
}
print "-1 -1 -1"