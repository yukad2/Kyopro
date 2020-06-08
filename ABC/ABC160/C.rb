i = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.split(" ").map(&:to_i)
k=[]
(i[1]-1).times{|t|
  k[t]=n[t+1]-n[t]
}
k[i[1]-1]= i[0] - n[i[1]-1] + n[0]
k.sort!
k.delete_at(-1)
puts k.sum