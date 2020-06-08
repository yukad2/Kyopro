n,m  = gets.chomp.split
n = n.to_i
m = m.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end
que = arr.dup
que.each_with_index{|item,i|
    if item.include?(1) then
        b = item.reject{|k|k==l}[0]
            if ans[b-1] == nil
                ans[b-1] = l
                tugi.push(b)
        end
}