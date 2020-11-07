s = gets.chomp
left = 0
rignt = 0
arr = []
s.length.times{|i|
    left = 1
    right = 1
    while i - left > 0 and s[i-left] == "<"
        left += 1
    end
    while i + right < s.length and s[i+right] == ">"
        right += 1
    end
    arr.push([left,right-1].max)
}

p arr
