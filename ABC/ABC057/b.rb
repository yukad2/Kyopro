n,m =  gets.chomp.split(' ').map(&:to_i)
a = []
n.times{
    a.push(gets.chomp.split(' ').map(&:to_i))
}
c = []
m.times{
    c.push(gets.chomp.split(' ').map(&:to_i))
}
a.each{|student|
    min = [-1,(10**8)*4+3]
    c.each_with_index{|cp,i|
        if ((student[0]-cp[0]).abs + (student[1]-cp[1]).abs) < min[1]
            min = [i,(student[0]-cp[0]).abs + (student[1]-cp[1]).abs]
        end
    }
    p min[0] + 1
}