puts <<EOF
#include"colors.inc"
camera{
  location<3,6,7>
  look_at<1,3,4>
}

light_source{<50,100,-40> color 1.2*White}

plane{ <0,1,0>,1 pigment{checker color White color Gray} }

blob{
  threshold .5
EOF
i = 0
while line=gets
  a = line.split(/\s+/)
  x = a[0].to_f
  y = a[1].to_f
  z = a[2].to_f
  d = 0.01
  x = (x-1)*d
  y = (y-3)*d
  z = (z-2)*d
  puts "sphere {<#{x},#{y},#{z}>,0.1,0.1}"
end


puts <<EOF
interior{ ior 1.33} pigment{ color White filter 0.7 } finish { ambient 0.3 phong 0.6 } }

EOF
