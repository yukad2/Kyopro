x,y,a,b = gets.chomp.split.map!(&:to_i)
exp =0
while a*x < y and a*x<x+b do
    x = x*a
    exp += 1
end

p exp + (y-x-1)/b