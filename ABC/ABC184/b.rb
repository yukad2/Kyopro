n, x = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp
n.times{|i|
    if s[i] == 'o'
        x += 1
    elsif x > 0
        x -= 1
    end
}
p x