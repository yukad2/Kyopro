n = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
kaisu = 0
itta = Hash.new
itta.default = 0
loops = Array.new
now=0
n[1].times{|t|
    loops.push(now)
    itta[now]+=1
    if itta[a[now]-1] != 0 then
        #loopsから探す 長さ取る
        hidari = loops.find_index(a[now]-1)
        migi = loops.length - hidari

        puts loops[((n[1]-hidari)%migi)+hidari]+1
        exit
    end
    now=(a[now]-1)
}
puts now+1