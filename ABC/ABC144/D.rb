i = gets.chomp.split.map(&:to_i)
if ((i[0]**2 )* i[1]) <= i[2]*2 
    ans = Math.atan(2*(i[0]*i[0]*i[1]-i[2]).to_f/i[0]**3)
    print ans * 180.0 / Math::PI.to_f
else
    a = (2*(i[0]*i[1]-i[2])/(i[0]*i[1]).to_f)-i[0]
    ans = Math::PI/2 - Math.atan(2*i[2] / (i[0]*i[1]*i[1]).to_f)
    print ans * 180.0 / Math::PI.to_f
end