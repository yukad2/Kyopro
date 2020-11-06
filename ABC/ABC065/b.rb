n = gets.to_i
arr =[]
while line = $stdin.gets
arr << line.to_i
end
check = Array.new(n,0)
i = 0
ans = 0
while check[i] == 0
    ans += 1
    if arr[i] == 2 
        puts ans
        exit
    else
        check[i] = 1
        i = arr[i] - 1 
    end
end
puts -1