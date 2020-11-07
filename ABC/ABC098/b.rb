n = gets.to_i
s = gets.chomp.split('')
ans = 0
n.times{|i|
    ans = (s[0..i] & s[i+1..-1]).uniq.length > ans ? (s[0..i] & s[i+1..-1]).uniq.length : ans
}
p ans
