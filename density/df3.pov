#include"colors.inc"
light_source{<2,2,2> color White*2}
light_source{<10,10,-10> color White*2}
camera{
  location<2,2,2>
  look_at<0,0,0>
  angle 60
}

box {
  <-1,-1,-1><1,1,1>
  hollow
  pigment {rgbt <0,0,1,0.8>}
  interior {
    media {
      density{
        density_file df3 "test.df3"
        interpolate 1
        scale <2,2,2>
        translate <-1,-1,-1>
        color_map {
          [0.0 rgb <0.0, 0.0, 0.0>]
          [0.4 rgb <0.3, 0.4, 0.5>]
          [1.0 rgb <1.0, 1.0, 1.0>]
        }
      }  
      emission rgb 4* <.8, .8, 1>
    }
  }
}
