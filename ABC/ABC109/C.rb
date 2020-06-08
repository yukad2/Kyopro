n = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)

def gcd(a, b)
    if a < b
        a, b = b, a
    end
    r = a % b
    if r == 0
        return b
    end
    return gcd(r, b)
end

x.map!{|item|(item-n[1]).abs}.sort!
max=x[0]
(n[0]-1).times{|t|
    max = gcd(max,x[t+1])
}
puts max