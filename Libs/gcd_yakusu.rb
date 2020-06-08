def gcd(x, y)
    t = 0
    while (y != 0) {
         t = x % y;  x = y;  y = t;
     }
     return x;
end



#互除法, 計算量はO(log n)