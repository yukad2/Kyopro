n = gets.to_i
#n自身と-(n-1)..nで2個
ans = 0
i = 1
while n/i > i do
    center = n/i
    if i%2 == 1
        if (center * i) == n
            ans += 2
        end
    else
        if (center * i)+1 == n
            ans += 2
        end
        if (center * i)-1 == n
            ans += 2
        end
    end
    i+= 1
end
p ans