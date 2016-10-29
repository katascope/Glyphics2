#include "colors.inc"

camera{ orthographic angle 50
        location <1,1,-1>*48
        look_at  <0,0,0>
        right x*image_width/image_height
        translate <0,15.00,0>
      } 

//camera {
//  location <3, 31, -63>  // Camera location: x,y,x coordinates in three-space
  //look_at <0, 0, 0>     // Direction of view in three-space
//}

light_source {
  <-50,50,-30>  // Location is behind the viewer, high, and to the left
  color rgb <1.5, 1.5, 1.5>  // This is a BRIGHT white light 
}

plane {
  y, 0  // along the x-z plane (y is the normal vector)
//  pigment { checker color Black  color White } // checkered pattern
  pigment { color Black } // checkered pattern
  finish {
      ambient 0.2  // How much light is scattered from nearby objects
      diffuse 0.8  // How much light comes from the direct source
      }
  scale 6  // Enlarge the basic checker pattern by a factor of two
}

box {
  <-16,0,-16> <16, 0.5, -15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-16,0,-15.5> <-15.5, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,0,-15.5> <-0.5, 0.5, -8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-0.5,0,-15.5> <0.5, 0.5, -8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <0.5,0,-15.5> <15.5, 0.5, -8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <15.5,0,-15.5> <16, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,0,-8> <-8, 0.5, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0,-8> <-7.5, 0.5, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-7.5,0,-8> <7.5, 0.5, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0,-8> <8, 0.5, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <8,0,-8> <15.5, 0.5, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0,-7.5> <-7.5, 0.5, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-7.5,0,-7.5> <7.5, 0.5, 7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0,-7.5> <8, 0.5, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,0,-0.5> <-7.5, 0.5, 0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0,-0.5> <15.5, 0.5, 0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,0,0.5> <-8, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0,0.5> <-7.5, 0.5, 7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0,0.5> <8, 0.5, 7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <8,0,0.5> <15.5, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0,7.5> <-7.5, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-7.5,0,7.5> <7.5, 0.5, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0,7.5> <8, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-7.5,0,8> <-0.5, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-0.5,0,8> <0.5, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <0.5,0,8> <7.5, 0.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-16,0,15.5> <16, 0.5, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-16,0.5,-16> <-15.5, 31.5, -15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <15.5,0.5,-16> <16, 31.5, -15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0.5,-8> <-7.5, 15.5, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0.5,-8> <8, 15.5, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0.5,7.5> <-7.5, 8, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0.5,7.5> <8, 8, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0.5,8> <-7.5, 8, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0.5,8> <8, 8, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-16,0.5,15.5> <-15.5, 31.5, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,0.5,15.5> <-7.5, 8, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,0.5,15.5> <8, 8, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <15.5,0.5,15.5> <16, 31.5, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,1,-15.5> <-8.5, 8, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 1, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,1,-15.5> <-1, 8, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <1,1,-15.5> <8, 8, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <8.5,1,-15.5> <15.5, 8, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 1, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,1,-8> <-8.5, 8, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <8.5,1,-8> <15.5, 8, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,1,1> <-8.5, 8, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <8.5,1,1> <15.5, 8, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,1,8.5> <-8.5, 8, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <8.5,1,8.5> <15.5, 8, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,8,7.5> <8, 8.5, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,8,8> <-7.5, 8.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-7.5,8,8> <7.5, 8.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,8,8> <8, 8.5, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,8,15.5> <8, 8.5, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,8.5,7.5> <-7.5, 15.5, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,8.5,7.5> <8, 15.5, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,15.5,-8> <-7.5, 16, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-7.5,15.5,-8> <7.5, 16, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,15.5,-8> <8, 16, -7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,15.5,-7.5> <-7.5, 16, 7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,15.5,-7.5> <8, 16, 7.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-8,15.5,7.5> <-7.5, 16, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-7.5,15.5,7.5> <7.5, 16, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <7.5,15.5,7.5> <8, 16, 8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-16,31.5,-16> <-15.5, 32, -15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,31.5,-16> <15.5, 32, -15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <15.5,31.5,-16> <16, 32, -15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-16,31.5,-15.5> <-15.5, 32, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <15.5,31.5,-15.5> <16, 32, 15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-16,31.5,15.5> <-15.5, 32, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <-15.5,31.5,15.5> <15.5, 32, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
box {
  <15.5,31.5,15.5> <16, 32, 16>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.5
	       }
   }
}
