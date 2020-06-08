require 'matrix'

def plus(array)
    flag = 1
    num = 0
    while flag == 1 do
        if array[num] == 1 then
            array[num] = 0
            num+=1
        else
            array[num] = 1
            flag = 0
        end
    end
    return 0
end

n = gets.chomp.split(" ").map(&:to_i)
arr = Array.new
while line = $stdin.gets
arr << Vector.elements(line.chomp.split(" ").map(&:to_i))
end

list=Array.new(n[0])
list.fill(0)
list[0]=1
wa = []
while list.include?(0) do
    kari = Vector.zero(n[1]+1)
    list.each_with_index{|item,k|
        if item == 1 then
            kari += arr[k]
        end
    }
    wa.push(kari)
    plus(list)
end
p list

wa.sort!{|a,b|a[0]<=>b[0]}
wa.each{|item|
    if item[1..(n[1]-1)].min >=n[2] then
        puts item[0]
        exit
    end
}
puts "-1"