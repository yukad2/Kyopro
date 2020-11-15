n, w = gets.chomp.split.map(&:to_i)
table = Array.new(2*(10**5)+1,0)
n.times{|i|
    stp = gets.chomp.split.map(&:to_i)
    table[stp[0]] += stp[2]
    table[stp[1]] -= stp[2]
}
use = 0
table.each{|i|
    use += i
    if use > w
        puts "No"
        exit
    end
}
puts "Yes"