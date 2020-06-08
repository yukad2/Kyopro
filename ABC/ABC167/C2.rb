require 'matrix'

n = gets.chomp.split(" ").map(&:to_i)
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end

wa = (1..n[0]).map{|i|
    arr.combination(i).map{|item|
        item.transpose.map &:sum
    }
}
p wa