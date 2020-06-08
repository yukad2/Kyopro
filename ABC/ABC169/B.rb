n = gets.to_i
a = gets.chomp.split.map(&:to_i)
mod = 10**18
sum = 1
a.sort!
if a[0] == 0 then
    puts "0"
    exit
end
a.each{|item|
    sum = sum*item
    if sum > mod then
        puts "-1"
        exit
    end
}
puts sum
