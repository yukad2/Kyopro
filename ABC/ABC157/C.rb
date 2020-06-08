arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end
core = arr[1..-1]
a = Array.new(arr[0][0]).fill("k")
core.sort!
core.each{|item|
if a[item[0]-1] == "k"
    a[item[0]-1] = item[1]
elsif a[item[0]-1] != item[1]
    puts "-1"
    exit
end
}
str=""
a.each{|item|
 if item == nil or item =="k"
    str+="."
 else
    str+=item.to_s
 end
}
rp1=Regexp.new(str)
(10**arr[0][0]).times{|t|
    if rp1 =~ t.to_s
            puts t
            exit
    end
}
puts "-1"