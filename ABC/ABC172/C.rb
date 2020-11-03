arr = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
k = arr[2]

a_sum =[0]
arr[0].times{|i|
    a_sum.push(a[i]+a_sum[i])
}
b_sum =[0]
arr[1].times{|i|
    b_sum.push(b[i]+b_sum[i])
}

ans = 0
pos = arr[1]
(arr[0]+1).times{|i|
    if a_sum[i] > k
        break
    end
    while b_sum[pos] + a_sum[i] > k
        pos -= 1
    end
    ans = [ans, pos + i].max
}
p ans