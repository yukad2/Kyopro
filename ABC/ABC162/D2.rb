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

sum = 0

n.times{|t|
    (n/2-t).times{|k|
        if n[t]!=n[k+t+1] and n[k+t-1]!=n[2*k-t-1] and 

    }
}