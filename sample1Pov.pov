#include "colors.inc"

// A. First Essential Feature: The CAMERA to take the picture
camera {
  location <3, 12, -27>  // Camera location: x,y,x coordinates in three-space
  look_at <0, 5, -2>     // Direction of view in three-space

}

// B. Second Essential Feature: The LIGHT SOURCE
light_source {
  <-50,50,-30>  // Location is behind the viewer, high, and to the left
  color rgb <1.5, 1.5, 1.5>  // This is a BRIGHT white light 
}

// C. Third Essential Feature - The OBJECTS in three-space

// Object #1 - A checkerboard floor or plane
plane {
  y, 0  // along the x-z plane (y is the normal vector)
  pigment { checker color Black  color White } // checkered pattern
  finish {
      ambient 0.2  // How much light is scattered from nearby objects
      diffuse 0.8  // How much light comes from the direct source
      }
  scale 1  // Enlarge the basic checker pattern by a factor of two
}

/*
// Object #2 - A shiny red sphere
sphere {
  <1.0, 6.0, 3.7>, 5  // The <origin> of the sphere and it's radius
  pigment { 
      color rgbf <1, 0, 0, 0> // Red, Green, Blue and Filter (transparency)
      }
  finish {
      phong 0.8  // The shiny highlight
      reflection 0.8  // How much light bounces off the object
      }
} */

// Objetct #3 - A moderatley shiny yellow box
box {
  <-1, 0, -3> <-5, 8, -7>  // Two corners of the box
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

// Objetct #3 - A moderatley shiny yellow box
box {
  <0, 0, 0> <1, 1, 1>  // Two corners of the box
  texture{
  pigment { 
  //    marble
      color_map {
          [0.0 color rgbf <1, 1, 0.2, 0.0>]
          [1.0 color rgbf <1, 1, 0.8, 0.0>]
         }
      }
  
  finish {
      phong 0.8
      reflection 0.2
      ambient 0.15
      diffuse 0.75
      }
  }
}

