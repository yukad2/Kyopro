a,b,x,y = gets.chomp.split(' ').map(&:to_i)
if a > b #くだり
    if x + 2*x*(a-b-1) > x + y*(a-b-1)
        p x + y*(a-b-1)
    else
        p x + 2*x*(a-b-1)
    end
elsif a == b
    p x
else
    if x + 2*x*(b-a) > x + y*(b-a)
        p x + y*(b-a)
    else
        p x + 2*x*(b-a)
    end
end

