s = gets.chomp
s.chop!.chop!
i = s.length
while s[0..i/2-1] != s[i/2 .. -1] do
    s.chop!.chop!
    i = s.length
end
p s.length