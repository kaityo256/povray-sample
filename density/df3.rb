LX = 20
LY = 20
LZ = 20
a = Array.new(LX*LY*LZ){0}
puts "Data size is #{a.size+6}."

LX.times{|x|
  LY.times{|y|
    LZ.times{|z|
      r = ((x.to_f - LX/2)**2 + (y.to_f-LY/2)**2 + (z.to_f-LZ/2)**2)**0.5
      i = x+y*LX+z*LY*LZ
      v = Math.tanh(-(r-LX*0.3)/2.0)*255
      a[i] = v
    }
  }
}

File.open("test.df3","wb"){|f|
  f.write([LX,LY,LZ].pack("n*"))
  f.write(a.pack("c*"))
}

