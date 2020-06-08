n = gets
arr = Array.new
while line = $stdin.gets
arr << line.chomp.reverse
end
puts arr.sort.map(&:reverse)
