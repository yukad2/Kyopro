n = gets.to_i
s = gets.chomp
r=[]
g=[]
b=[]
n.times{|t|
    if s[t] == "R"
        r.push(t)
    elsif s[t] == "G"
        g.push(t)
    else
        b.push(t)
    end
} 
bsize = b.count
sum = 0

r.each{|r_num|
    g.each{|g_num|
    kari = 0
    if r_num>g_num
        max=r_num
        min=g_num
    else
        max=g_num
        min=r_num
    end
    if (max-min)%2==0 and b.include?(((max-min)/2)+min)
        kari -=1
    end
    if b.include?(2*max-min)
        kari -=1
    end
    if b.include?(min-(max-min))
        kari -=1
    end
    sum += bsize+kari
    }
}
puts sum