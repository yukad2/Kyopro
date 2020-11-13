n,a,b = gets.chomp.split(' ').map(&:to_i)
if a == b
    puts 1
    exit
end
if a > b 
    puts 0
    exit
end
if n == 1
    puts 0
    exit
end
low = a * (n-1) + b
high = a + b*(n-1)
p high - low + 1