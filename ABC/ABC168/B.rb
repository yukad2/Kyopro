k = gets.chomp.to_i
s = gets.chomp
if s.length > k then
    puts (s[0..k-1]+"...")
else
    puts s
end