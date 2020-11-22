s1 ,p1 = gets.chomp.split(' ').map(&:to_i)
(1..Integer.sqrt(p1)).each{|i|
    if p1 % i == 0 and i + (p1 / i) == s1
        puts "Yes"
        exit
    end
}
puts "No"