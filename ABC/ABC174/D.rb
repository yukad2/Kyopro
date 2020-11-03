n = gets.to_i
c = gets.chomp
sum =[0,0]
w_migi = 0
n.times{|i|
    item = c[i]
    if item == 'R'
        sum[0]+=1
    else
        sum[1]+=1
    end
}
i = c.length - 1 
while c[i] == 'W'
    i -= 1
end
i = c.length - 1 - i 
p sum,i
