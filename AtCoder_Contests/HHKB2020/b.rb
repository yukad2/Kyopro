hw = gets.chomp.split(" ").map(&:to_i)
arr = Array.new
ans = 0
while line = $stdin.gets
line = line.chomp
(hw[1]-1).times{|i|
    if line[i] == "." and line[i+1] == "."
        ans += 1
    end
}
arr << line.split("")
end
hw[1].times{|i|
    (hw[0]-1).times{|k|
        if arr[k][i] == "." and arr[k+1][i] == "."
            ans += 1
        end
    }
}
puts ans