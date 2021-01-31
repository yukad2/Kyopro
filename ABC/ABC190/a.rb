a,b,c = gets.chomp.split(" ").map(&:to_i)
if (a==b)
    if(c==0)
        puts "Aoki"
    else
        puts "Takahashi"
    end
elsif (a>b)
    puts "Takahashi"
else
    puts "Aoki"
end