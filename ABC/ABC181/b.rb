n = gets.to_i

arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end

ans = 0
arr.each{|item|
    ans += item[1]*(item[1]+1)/2 - item[0]*(item[0]+1)/2 + item[0]
}
p ans