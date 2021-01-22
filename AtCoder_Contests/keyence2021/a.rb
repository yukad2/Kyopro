n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
tmp = 0
amax = 0
n.times{|i|
    amax = (amax <a[i])? a[i] : amax
    tmp = (tmp <amax*b[i])? amax*b[i] : tmp
    p tmp
}