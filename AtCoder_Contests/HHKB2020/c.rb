n = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i)
h = Array.new(200000)
min = 0
arr.each{|item|
    if item != min
        h[item] = 1
        puts min
    else
        h[item] = 1
        while h[min] != nil
            min += 1
        end
        puts min
    end
}