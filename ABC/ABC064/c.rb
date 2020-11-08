n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
colors = Array.new(9).fill(0)
a.each{|item|
    if item / 400 >= 8
        colors[8] += 1
    else
        colors[item/400] += 1
    end
}
if colors[0..7].count{|x|x!=0} == 0
    b = 1
else
    b = colors[0..7].count{|x|x!=0}
end
print b ," ", colors[0..7].count{|x|x!=0} + colors[8]