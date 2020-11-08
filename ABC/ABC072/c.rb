n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
dekai = Array.new(100002).fill(0)
a.each{|item|
    dekai[item]+=1
    dekai[item+1]+=1
    dekai[item + 2] += 1
}
p dekai.max