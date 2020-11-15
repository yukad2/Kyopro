sx, sy, gx, gy = gets.chomp.split.map(&:to_f)
p sx + (gx - sx)*sy/(sy+gy)