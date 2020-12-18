memo = Array.new(101) { Array.new(101){Array.new(101, 0)} }

def fxyz(x,y,z)
    if x == 99
        nx = 0
    else
        nx = x/(x+y+z)
a,b,c = gets.chomp.split(' ').map(&:to_i)