n = gets.chomp.to_i
pos = [0,0,0] #t,x,y
n.times{
    a = gets.chomp.split(' ').map(&:to_i)
    delta = a[0] - pos[0]
    if ((pos[1]-a[1]).abs + (pos[2]-a[2]).abs) > delta
        puts "No"
        exit
    elsif ((pos[1]-a[1]).abs + (pos[2]-a[2]).abs) == delta
        pos = a
        next
    elsif ((pos[1]-a[1]).abs + (pos[2]-a[2]).abs) < delta
        if (delta - ((pos[1]-a[1]).abs + (pos[2]-a[2]).abs) )% 2 == 0
            pos = a
            next
        else
            puts "No"
            exit
        end
    end
}
puts "Yes"