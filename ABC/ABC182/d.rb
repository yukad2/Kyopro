n = gets.to_i
a =  gets.chomp.split(' ').map(&:to_i)
pos = 0
ans = 0
delta = [0,0]
a.each{|item|
    if item > 0
        if delta[1] + item > 0
            delta[0] += delta[1] + item
            delta[1] = 0
        else
            delta[1] += item
        end
    else
        delta[1] += item
    end
    if ans < pos + delta[0]
        ans = pos +  delta[0]
    end
    pos = pos + delta.sum
}
p ans