n = gets.to_i
str = gets.chomp
stack = []
ans = 0
i = 0
while i < n do
    if str[i] == 'f'
        stack.push('x')
        stack.push('o')
    elsif stack != []
        tmp = stack.pop
        if tmp == str[i]   
            if str[i] == 'x'
                ans += 1
            end
        else
            stack = []
        end
    end
    i += 1
end
p n - ans*3