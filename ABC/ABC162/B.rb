i =gets.to_i
sum =0
i.times{|t|
    t+=1
    if t%3!=0 and t%5!=0 then
        sum+=t
    end
}
puts sum