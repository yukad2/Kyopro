n,m  = gets.chomp.split
n = n.to_i
m = m.to_i
arr = Array.new(n).map{Array.new()}
nama = Array.new
while line = $stdin.gets
nama << line.chomp.split(" ").map(&:to_i)
arr[nama[-1][0]-1].push(nama[-1][1]-1)
arr[nama[-1][1]-1].push(nama[-1][0]-1)
end

dist = Array.new(n)
dist.fill(-1)
dist[0] = 0

que = []
que.push(0)

until que.empty? do
    arr[que[0]].each{|item|
        if dist[item] == -1
            dist[item] = dist[que[0]] + 1
            que.push(item)
        end
    }
    que.delete_at(0)
end
ans = Array.new(n)

nama.each{|item|
    if dist[item[0]-1] == dist[item[1]-1]
        next
    elsif dist[item[0]-1] > dist[item[1]-1]
        ans[item[0]-1] = item[1]
    else
        ans[item[1]-1] = item[0]
    end
}

puts "Yes",ans[1..-1]