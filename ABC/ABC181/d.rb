s = gets.chomp.split('').map(&:to_i)
if s.count == 1
    if s[0] % 8 == 0
        puts "Yes"
    else
        puts "No"
    end
    exit
elsif s.count == 2
    if (s[0] + s[1]*10) % 8 == 0 or (s[1] + s[0]*10) % 8 == 0
        puts "Yes"
    else
        puts "No"
    end
    exit
end

all = Hash.new
all.default = 0
s.each{|a|
    all[a] += 1
}
need = Array.new(0)

10.times{|a|
    if all[a] == nil
       need[a] = 0
    elsif all[a]>=3
        need[a] = 3
    else
       need[a] = all[a]
    end
}
5.times{|guusu|
    if need[guusu*2] == 0
        next
    end
    kazu=need.dup
    kazu[guusu*2] -= 1
    10.times{|jyu|
        if kazu[jyu] == 0
            next
        end
        kazu[jyu] -= 1
        10.times{|hyaku|
            if kazu[hyaku] == 0
                next
            end
            ans = hyaku*100 +jyu*10 + guusu*2
            if ans%8 == 0
                puts "Yes"
                exit
            end
        }
        kazu[jyu] += 1
    }
}
puts "No"