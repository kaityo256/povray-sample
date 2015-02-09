#include"colors.inc"
//light_source{<1,1,2> color White*2}
light_source{<10,10,-10> color White*2}
camera{
  location<2,2,-2>
  look_at<0,0,0>
  angle 60
}

plane{ <0,1,0>,0 pigment{checker color White color Gray} }

#declare FUNC=function{
  pigment {
    density_file df3 "iso.df3"
    interpolate 1
  }
}
/*
box{<0,0,0>,<1,1,1>
  pigment{checker White*1.5, color rgb<0.5,0.8,0.4> scale 0.25}
  finish{phong 1 reflection 0.1}
}
*/

isosurface{
  function { -FUNC(x,y,z).gray + 0.5}
  //function { x*x + y*y + z*z - 0.5}
  open
  contained_by {box{0,1}}
  accuracy 0.001
  max_gradient  20
  pigment {rgb <0.3,0.3,1.0>}
  finish{ambient 0.5}
  translate <-0.5,0,-0.5>
}
