a,b,c = gets.chomp.split(' ').map(&:to_i)
mod = []
i = 0
tmp = (a*i) % b

while !mod.include?(tmp) do
    mod.push(tmp)
    if tmp == c
        puts "YES"
        exit
    else
        i += 1
        tmp = (a * i)% b
    end
end
puts "NO"