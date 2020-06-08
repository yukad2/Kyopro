i = gets.chomp.split(" ").map(&:to_i)
array=[]
34.times{|t|
    34.times{|k|
        34.times{|l|
            array.push((i[0]**t )* (i[1]**k) *(i[2]**l))
}
}
}
puts array.sort[i[3]-1]