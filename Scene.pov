#include "colors.inc"

camera {
  location <3, 12, -27>  // Camera location: x,y,x coordinates in three-space
  look_at <0, 5, -2>     // Direction of view in three-space
}

light_source {
  <-50,50,-30>  // Location is behind the viewer, high, and to the left
  color rgb <1.5, 1.5, 1.5>  // This is a BRIGHT white light 
}

plane {
  y, 0  // along the x-z plane (y is the normal vector)
  pigment { checker color Black  color White } // checkered pattern
  finish {
      ambient 0.2  // How much light is scattered from nearby objects
      diffuse 0.8  // How much light comes from the direct source
      }
  scale 1  // Enlarge the basic checker pattern by a factor of two
}


box {
  <0, 0, 0> <1, 1, 1>  // Two corners of the box
  texture{
  pigment { 
  //    marble
      color_map {
          [0.0 color rgbf <1, 1, 0.2, 0.0>]
          [1.0 color rgbf <1, 1, 0.8, 0.0>]
         }
      turbulence 1.5 lambda 1.5 omega 0.75 octaves 8
      }
  normal {bumps 0.2 scale 0.2}
  finish {
      phong 0.8
      reflection 0.2
      ambient 0.15
      diffuse 0.75
      }
  }
}

