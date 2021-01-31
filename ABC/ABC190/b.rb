n,s,d = gets.chomp.split(" ").map(&:to_i)
while line = $stdin.gets
    x,y = line.chomp.split(" ").map(&:to_i)
    if (x<s)and(y>d)
        puts "Yes"
        exit
    end
end
puts "No"