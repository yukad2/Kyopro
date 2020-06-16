i = gets.chomp.split(' ').map(&:to_i)
(i[0]+1).times{|t|
    if 2*t  + 4*(i[0]-t) == i[1]
        puts "Yes"
        exit
    end
}
puts "No"