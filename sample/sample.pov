#include"colors.inc"

camera{ location<5,6,4> look_at<1,3,2> }

light_source{<50,100,-40> color 1.2*White}

plane{ <0,1,0>,1 pigment{checker color White color Gray} }

blob{
  threshold .5
  sphere { <1,2,1>, 1, 1}
  sphere { <1.4,2.4,1>, 1, 1}
  sphere { <1,3.4,1.2>, 1, 1}
  sphere { <-4,4,1>, 1, 1}
  sphere { <-2,3,-2>, .5, 1}
  interior{ ior 1.33}
  pigment{ color White filter 0.7 }
  finish { ambient 0.3 phong 0.6 }
}
