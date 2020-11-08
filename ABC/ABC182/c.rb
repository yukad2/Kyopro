n =  gets.chomp.split('').map(&:to_i)
(n.length).times{|i|
    i = n.length - i
    n.combination(i){|c|
        if c.sum % 3 == 0
            puts n.length - i
            exit
        end
    }
}
p -1