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

box {
  <16,0,-16> <31.5, 0.5, -15.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0,-15.5> <16.5, 0.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16.5,0,-15.5> <23.5, 0.5, -12.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <23.5,0,-15.5> <24, 0.5, -12.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <24,0,-15.5> <31, 0.5, -12.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <31,0,-15.5> <31.5, 0.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16.5,0,-12.5> <19.5, 0.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,0,-12.5> <28, 0.5, -12>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <28,0,-12.5> <31, 0.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,0,-12> <20, 0.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <20,0,-12> <27.5, 0.5, -4.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,0,-12> <28, 0.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0,-8.5> <20, 0.5, -8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,0,-8.5> <31.5, 0.5, -8>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0,-8> <16.5, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16.5,0,-8> <19.5, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,0,-8> <20, 0.5, -4.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,0,-8> <28, 0.5, -4.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <28,0,-8> <31, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <31,0,-8> <31.5, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,0,-4.5> <28, 0.5, -4>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,0,-4> <20, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <20,0,-4> <23.5, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <23.5,0,-4> <24, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <24,0,-4> <27.5, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,0,-4> <28, 0.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0,-1> <31.5, 0.5, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0.5,-16> <19.5, 3.5, -12.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 1, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <20,0.5,-16> <23.5, 3.5, -12.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <24,0.5,-16> <27.5, 3.5, -12.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <28,0.5,-16> <31.5, 3.5, -12.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 1, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0.5,-12> <19.5, 3.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <28,0.5,-12> <31.5, 3.5, -8.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 0.4980392, 0.4980392>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0.5,-8> <19.5, 3.5, -5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <28,0.5,-8> <31.5, 3.5, -5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.4980392, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,0.5,-4.5> <20, 4, -4>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,0.5,-4.5> <28, 4, -4>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <16,0.5,-4> <19.5, 3.5, -1>
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
box {
  <19.5,0.5,-4> <20, 1, -1.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,0.5,-4> <28, 1, -1.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <28,0.5,-4> <31.5, 3.5, -1>
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
box {
  <19.5,0.5,-1.5> <20, 1, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,0.5,-1.5> <28, 1, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,1,-4> <20, 4, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,1,-4> <28, 4, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,1,-1> <20, 4, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,1,-1> <28, 4, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,4,-4.5> <28, 4.5, -4>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,4,-4> <20, 4.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <20,4,-4> <22, 4.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <22,4,-4> <25.5, 4.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <25.5,4,-4> <27.5, 4.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <0.1215686, 0.4980392, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <27.5,4,-4> <28, 4.5, -1>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <19.5,4,-1> <28, 4.5, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
box {
  <22,4.5,-4> <25.5, 7.5, -0.5>
     texture {
   pigment {
        agate
        turbulence 1
        lambda 1.5
        omega .8
        octaves 8
        color_map {
          [0.00 color rgb <1, 1, 1>]
        }
      }
	finish {
		phong 0.8
		reflection 0.25
	       }
   }
}
