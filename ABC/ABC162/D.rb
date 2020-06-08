require 'set'
n = gets.to_i
s = gets.chomp
r=Set.new
g=Set.new
b=Set.new
n.times{|t|
    if s[t] == "R"
        r<<(t)
    elsif s[t] == "G"
        g<<(t)
    else
        b<<(t)
    end
} 

sum=0
r.each{|r_num|
    g.each{|g_num|
    sum += b.length
    if r_num>g_num
        max=r_num
        min=g_num
    else
        max=g_num
        min=r_num
    end
    if (max-min)%2==0 and b.include?(((max-min)/2)+min)
        sum -=1
    end
    if b.include?(2*max-min)
        sum -=1
    end
    if b.include?(min-(max-min))
        sum -=1
    end
    }
}
puts sum