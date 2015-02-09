LX = 20 
LY = 20
LZ = 20
a = Array.new(LX*LY*LZ){0}
puts "# Data size is #{a.size+6}."

LX.times{|x|
  LY.times{|y|
    LZ.times{|z|
      rx = x.to_f/LX.to_f - 0.5
      ry = y.to_f/LY.to_f - 0.5
      rz = z.to_f/LZ.to_f - 0.5
      r = (rx**2 + ry**2+rz**2)**0.5*1.3
      v = 256 - (r*256).to_i
      v = 0 if v < 0
      v = 255 if v > 255
      i = x+y*LX+z*LY*LZ
      a[i] = v
    }
  }
}

File.open("iso.df3","wb"){|f|
  f.write([LX,LY,LZ].pack("n*"))
  f.write(a.pack("c*"))
}

