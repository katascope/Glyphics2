#include "colors.inc"

camera{ orthographic angle 50
        location <1,1,-1>*64
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

sphere {
    <-32,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-32>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-31>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-30>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-29>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-28>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-27>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-26>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-25>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-24>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-23>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-22>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-21>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-20>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-19>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-18>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-17>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-16>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-15>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-14>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-13>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-12>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-11>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-10>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,1,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,1,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,2,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,2,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,3,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,3,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,4,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,4,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,5,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,5,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,6,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,6,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,7,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,7,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,8,-9>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,7,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,7,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,8,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,9,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,9,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,9,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,9,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,9,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,9,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,9,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,10,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,10,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,10,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,10,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,10,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,10,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,10,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,11,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,11,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,11,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,11,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,11,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,11,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,11,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,12,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,12,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,12,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,12,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,12,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,12,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,12,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,13,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,13,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,13,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,13,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,13,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,13,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,13,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,14,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,14,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,14,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,14,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,14,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,14,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,14,-8>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-11,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-10,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,0,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,1,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,2,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,3,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,4,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,5,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-32,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-31,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-30,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-29,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-28,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-27,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-26,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-8,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-7,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-6,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-5,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-4,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-3,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-2,6,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,7,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-9,7,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-25,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-24,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-23,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-22,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-21,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-20,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-19,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-18,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-17,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-16,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-15,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-14,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-13,8,-7>,0.75
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
		reflection 0.25
	       }
   }
}
sphere {
    <-12,8,-7>,0.75