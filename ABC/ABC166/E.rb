n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b=Hash.new(0)
c=Hash.new(0)

a.each_with_index{|item,i|
    b[i+1-item]+=1
    c[i+1+item]+=1
}
keys = b.keys & c.keys
ans = keys.map{|i|b[i] * c[i]}.sum
p ans