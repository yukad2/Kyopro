n, amari = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
kazu=[0,0]
a.each{|item| kazu[item%2]+=1} #gusu,kisu
if kazu[1]==0
    if amari==1 then
        puts 0
    else
        puts 2**n
    end
else
    puts 2**(n-1)
end