input = gets.chomp.split(" ").map(&:to_i)
n = input[0]
m = input[1]
if n*2>m then
    print m/2
else
    m-=n*2
    print n + m/4
end