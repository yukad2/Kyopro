n = gets.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_f)
end
n.times{|a|
    (n-a-1).times{|b|
        b = a + b + 1
        (n-b-1).times{|c|
            c = b + c + 1
            x1, y1 = arr[a]
            x2, y2 = arr[b]
            x3, y3 = arr[c]
            x1 -= x3
            x2 -= x3
            y1 -= y3
            y2 -= y3
            if x1 * y2 == x2 * y1
                puts "Yes"
                exit
            end
        }
    }
}
puts "No"