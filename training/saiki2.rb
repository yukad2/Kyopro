def f(a, b)
    if (b==0)
        return a
    else
        return f(b, a%b)
    end
end

puts f(557,31)