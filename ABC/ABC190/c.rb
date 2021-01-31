n,m = gets.chomp.split(" ").map(&:to_i)
rules = []
m.times{
    rules<<gets.chomp.split(" ").map(&:to_i)
}
k = gets.to_i
human = []
k.times{
    human<<gets.chomp.split(" ").map(&:to_i)
}
truemax = 0

[0, 1].repeated_permutation(k) do |bits|
    tmp = 0
    sara = Array.new(n)
    k.times{|i|
       sara[human[i][bits[i]]]=1
    }
    rules.each{|item|
        if sara[item[0]] != nil and sara[item[1]] != nil
            tmp += 1
        end
    }
    truemax = (tmp>truemax)? tmp : truemax;
end
p truemax