i = gets.chomp.split(" ").map(&:to_i)
if (i[0]-i[1]).abs > i[0]
    puts i[0]
else
    a = i[1]*(i[0]/i[1])
    b = i[1]*((i[0]/i[1])+1)
    if i[0]-a > b-i[0]
        puts b-i[0]
    else
        puts i[0]-a
    end
end