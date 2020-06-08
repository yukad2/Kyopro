arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end