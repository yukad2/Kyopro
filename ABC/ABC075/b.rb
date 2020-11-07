h,w = gets.chomp.split(' ').map(&:to_i)
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ")
end

h.times{|i|
    w.times{|j|
        if arr[i][j] == '.'
            if i == 0
                


    }
}
