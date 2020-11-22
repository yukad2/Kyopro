r1,c1 = gets.chomp.split(' ').map(&:to_i)
r2,c2 = gets.chomp.split(' ').map(&:to_i)

#0手
if r1 == r2 and c1 == c2
    p 0
    exit
end

#1手
if (r1+c1 == r2+c2) or (r1-c1 == r2-c2) or ((r1-r2).abs + (c1-c2).abs <= 3)
    p 1
    exit
end

#2手
5.times{|i|
    i -= 2
    5.times{|j|
        j -= 2
        if (r1+c1 == r2+i+c2+j) or (r1-c1 == (r2+i)-(c2+j))
            p 2
            exit
        end
    }
}
#ue
if (r1+c1 == r2+3+c2) or (r1-c1 == (r2+3)-(c2))
    p 2
    exit
end
if (r1+c1 == r2-3+c2) or (r1-c1 == (r2-3)-(c2))
    p 2
    exit
end
if (r1+c1 == r2+c2+3) or (r1-c1 == (r2)-(c2+3))
    p 2
    exit
end
if (r1+c1 == r2+c2-3) or (r1-c1 == (r2)-(c2-3))
    p 2
    exit
end
if ((r1+c1)%2 == (r2+c2)%2)
    p 2
    exit
end
p 3