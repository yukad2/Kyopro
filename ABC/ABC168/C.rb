a, b, h ,m = gets.chomp.split
hdeg = 360*(((60*h.to_i)+m.to_i).to_f/60/12)
mdeg = 360*(m.to_i.to_f/60)
deg =  ((hdeg-mdeg).abs > 180)? 360 - (hdeg-mdeg).abs : (hdeg-mdeg).abs

puts Math.sqrt((b.to_i**2)+(a.to_i**2)-2*a.to_i*b.to_i*Math.cos(deg*Math::PI/180))