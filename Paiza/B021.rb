n =gets.to_s
arr = Array.new
while line = $stdin.gets
arr << line.chomp
end
puts arr.map{|item|
if item[-1] == "s" or item[-1] == "o" or item[-1] == "x" or item[-2..-1] == "sh" or item[-2..-1] == "ch"
    item+"es"
elsif item[-1] == "f"
    item[0..-2]+"ves"
elsif item[-2..-1] == "fe"
    item[0..-3]+"ves"
elsif item[-1]=="y"
    if item[-2]!="a" and item[-2]!="e" and item[-2]!="i" and item[-2]!="o" and item[-2]!="u"
        item[0..-2]+"ies"
    else
        item+"s"
    end
else
    item+"s"
end
}