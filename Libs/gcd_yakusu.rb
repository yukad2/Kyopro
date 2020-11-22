def gcd(x, y)
    t = 0
    while (y != 0) do
         t = x % y;  x = y;  y = t;
    end
     return x;
end



#互除法, 計算量はO(log n)