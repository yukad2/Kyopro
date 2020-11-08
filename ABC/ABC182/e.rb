h,w,n,m =  gets.chomp.split(' ').map(&:to_i)
f = Array.new(h) { Array.new(h,0) }

n.times{
    light = gets.chomp.split(' ').map(&:to_i)
    f[light[0]-1][light[1]-1] = 1
}
m.times{
    brick = gets.chomp.split(' ').map(&:to_i)
    f[brick[0]-1][brick[1]-1] = 2
}
p f
top = Array.new(w,0)
h.times{|i|
    left = [0,0]#pos,light
    w.times{|j|
        if f[i][j] == 1
            top[j] = 1
            if f[i][left[0]] != 2
                f[i].fill(1,left[0]..j)
            else
                f[i].fill(1,..j)
            end
            left[1] = 1
        elsif f[i][j] == 2
            if left[1] == 1
                f[i].fill(1,left[0]..j-1)
            end
            left = [j,0]
            top[j] = 0
        elsif top[j] == 1
            f[i][j] = 1
        end
    }
    if left[1] == 1
        f[i].fill(1,left[0]..-1)
    end
}

p f