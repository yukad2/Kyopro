n, t = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).reverse
ans = t
(n-1).times{|i|
    if arr[i] - arr[i+1] < t
        ans += arr[i] - arr[i+1]
    else
        ans += t
    end
}
p ans 