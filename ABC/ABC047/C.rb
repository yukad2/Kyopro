input = gets.chomp
last = input[0]
ans = 0
input.each_char{|item|
    if item != last
        last = item
        ans +=1
    end
}
p ans