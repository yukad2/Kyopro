n = gets.to_i
i = gets.chomp.split('').map(&:to_i)
sums=[0,0,0]
nums = [n/4,n/2,n-(n/4)]

sums[1]=i[nums[0]+1..nums[1]].inject(:+)
sums[2]=i[nums[1]+2..nums[2]].inject(:+)
sums[0]=(i[0..nums[0]]+i[nums[2]+1..-1]).inject(:+)
flag = -1
lastdif = 0
while flag == -1 do
    flag = 0
    if sums[0]<=sums[1] then
        nums[0]+=1
        sums[0]+=i[nums[0]]
        sums[1]-=i[nums[0]]
    end
    if sums[1]<=sums[2] then
        nums[1]+=1
        sums[1]+=i[nums[1]]
        sums[2]-=i[nums[1]]
    end
    if sums[0]-sums[2] < lastdif
        flag =-1
    end
    lastdif = sums[0]-sums[2] 
end
p sums