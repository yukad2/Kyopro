def gcd(x, y)
    t = 0
    while (y != 0) {
         t = x % y;  x = y;  y = t;
    }
    return x;
end

n = gets.to_i
puts gcd
