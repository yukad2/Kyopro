s = gets.chomp.split("")
q = gets.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ")
end
t = 0
arr.each{|item|
    if item[0] == "1"
        t +=1
    else
        if (item[1].to_i + t )%2 == 1 then
            s.unshift(item[2])
        else
            s.push(item[2])
        end
    end
}
p s
if t%2==1 then
    s.reverse!
end
s.each{|f|
    print f
}