// @road: #b3bcbc;
@road: #b8d0d1; // rgb(184, 208, 209)
@road_halo: rgba(245, 242, 231, 1);
@minor_road: #4d73a0;
@airport_fill: #ebe9e1;
@airport_outline: #d9dee2;

#road {
  ::outline {
    line-width: 0;
  }

  // line-width: 0.25;
  // line-color: red;
  
  ['mapnik::geometry_type'=2] {
    [class='motorway'] {
      [zoom>=8] {
        ::outline {
          line-width: 4;
          line-color: @road_halo;
        }

        line-color: @road;
        line-width: 2.5;
      }

      [zoom>=9] {
        ::outline {
          line-width: 3.5;
        }

        line-width: 2;
      }

      [zoom>=10] {
        ::outline {
          line-width: 2.5;
        }

        line-width: 1.5;
      }

      [zoom>=11] {
        line-width: 1.5;
      }

      [zoom>=12] {
        ::outline {
          line-color: darken(@road, 20%);
          line-width: 1.5;
        }

        line-width: 1;
      }
      
      [zoom>=14] {
        ::outline {
          line-width: 2;
        }

        line-width: 1.5;
      }
    }
    
    [class='motorway_link'] {
      [zoom>=12] {
        ::outline {
          line-color: darken(@road, 10%);
          line-width: 1;
        }

        line-color: @road;
        line-width: 0.5;
      }
    }
    
    [class='main'] {
      [zoom>=8] {
        ::outline {
          line-width: 2;
          line-color: @road_halo;
        }
        
        line-color: lighten(@road, 7.5%);
        line-width: 1.25;
      }

      [zoom>=9] {
        ::outline {
          line-width: 1.5;
        }
        
        line-width: 0.75;
      }

      [zoom>=11] {
        ::outline {
          line-width: 0;
        }
        
        line-color: @road;
      }

      [zoom>=12] {
        line-width: 0.75;
      }

      [zoom>=13] {
        ::outline {
          line-color: darken(@road, 10%);
          line-width: 1;
        }

        line-color: @road;
        line-width: 0.5;
      }
      
      [zoom>=14] {
        ::outline {
          line-color: darken(@road, 20%);
          line-width: 2;
        }

        line-color: @road;
        line-width: 1.5;
      }

    }
      
    [class='street'] {
      [zoom>=12] {
        line-width: 0.5;
        line-color: #eee;
        line-comp-op: multiply;
      }
      
      [zoom>=13] {
        line-color: #ddd;
      }
      
      [zoom>=14] {
        ::outline {
          line-width: 0;
          line-color: darken(@road, 20%);
          line-opacity: 0.3;
        }
        
        line-width: 0.25;
        // line-color: rgba(203, 32, 39, 0.2); // fade(#cb2027, 20%);
        line-color: rgba(77, 115, 160, 0.2);
      }
      
      [zoom>=15] {
        line-color: rgba(77, 115, 160, 0.3);
        line-width: 1.25;
      }
      
      [zoom>=16] {
        ::outline {
          line-width: 2;
        }
        
        line-width: 1.5;
      }
      
      /*
      [zoom>=16] {
        line-color: rgba(77, 115, 160, 0.35);
        line-width: 3;
        // line-color: rgba(203, 32, 39, 0.35); // fade(#cb2027, 35%);
      }

      [zoom>=17] {
        line-width: 6;
      }
      */
    }
    
    [class='street_limited'],
    [class='service'],
    [class='driveway'],
    {
      [zoom>=16] {
        line-color: rgba(77, 115, 160, 0.3);
        line-width: 1.25;
      }

      /*
      [zoom>=17] {
        line-width: 5;
      }
      */
    }
    
    //foot path
    [class='path'] {
      
      [zoom>=15] {
       line-width: 0.25;
       line-color: #56452e;
       line-opacity: 0.35;
       line-dasharray: 5,2;
      }
      
      [zoom>=16] {
        line-width: 0.5;
        line-color: #56452e;
        line-opacity: 0.35;
        line-dasharray: 5,2;
      }
      
      [zoom>=17] {
        line-width: 0.75;
      }
      
       [zoom>=18] {
        line-width: 1;
      }

      /*
      [zoom>=17] {
        line-width: 5;
      }
      */
    }
  }
}

/*
#tunnel {
  ['mapnik::geometry_type'=2] {
    [class='motorway'],
    [class='main'],
    [class='motorway_link'] {
      ::outline {
        line-color: darken(#aacacc, 10%);
        line-width: 3;
      }

      line-color: lighten(#aacacc, 10%);
      line-width: 2.5;
    }
  }
}
*/

/*
#bridge {
  ['mapnik::geometry_type'=2] {
    [class='motorway'],
    [class='main'],
    [class='motorway_link'] {
      ::outline {
        line-color: darken(@road, 10%);
        line-width: 3;
      }

      line-color: darken(@road, 5%);
      line-width: 2.5;

      ::right {
	    line-offset: 1.75;
        line-width: 0.25;
        line-color: darken(@road, 30%);
      }
    
      ::left {
	    line-offset: -1.75;
        line-width: 0.25;
        line-color: darken(@road, 30%);
      }
    
      /*
      [zoom>=15] {
        ::outline {
          line-width: 4;
        }
       
        line-width: 3;
        line-opacity: 0.55;

        ::right {
	      line-offset: 2.5;
          line-width: 0.5;
        }
    
        ::left {
	      line-offset: -2.5;
          line-width: 0.5;
        }
      }
      * /

      [zoom>=16] {
        ::outline {
          line-width: 10;
        }
        
        line-width: 5;
        line-opacity: 0.4;

        ::right {
	      line-offset: 5;
          line-width: 0.5;
          line-opacity: 0.3;
        }
    
        ::left {
	      line-offset: -5;
          line-width: 0.5;
          line-opacity: 0.3;
        }
      }

      [zoom>=17] {
        ::outline {
          line-width: 12;
        }
        
        line-width: 7;
        line-opacity: 0.3;
      }
    }
  }
}
*/

#aeroway {
  ::outline {
    line-color: @airport_outline;
	line-width: 0;    
  }
  
  line-color: @airport_fill;
  line-width: 0;

  [type='apron'] {
    polygon-fill: @airport_fill;
    
    [zoom>=15] {
      ::outline {
        line-width: 1.5;
      }
    }
    
    [zoom>=16] {
      ::outline {
        line-color: darken(@airport_outline, 10%);
      }
    }

    [zoom>=17] {
      ::outline {
        line-width: 3;
      }
    }

    [zoom>=19] {
      ::outline {
        line-width: 5;
      }
    }
  }

  [type='taxiway'] {
    [zoom>=11] {
      line-width: 0.25;
    }

    [zoom>=12] {
      line-width: 0.75;
    }

    [zoom>=13] {
      line-width: 1.5;
    }

    [zoom>=14] {
      line-width: 3;
    }

    [zoom>=15] {
      ::outline {
        line-width: 5.5;
      }
      
      line-width: 4;
    }

    [zoom>=16] {
      ::outline {
        line-color: darken(@airport_outline, 10%);
        line-width: 9.5;
      }
      
      line-width: 8;
    }

    [zoom>=17] {
      ::outline {
        line-width: 23;
      }
      
      line-width: 20;
    }

    [zoom>=18] {
      ::outline {
        line-width: 43;
      }
      
      line-width: 40;
    }

    [zoom>=19] {
      ::outline {
        line-width: 85;
      }
      
      line-width: 80;
    }
  }
  
  [type='runway'] {
    ['mapnik::geometry_type'=3] {
      polygon-fill: darken(@airport_fill, 5%);

      [zoom>=14] {
        ::outline {
          line-width: 1.5;
        }
        
        polygon-fill: darken(@airport_fill, 2%);
      }
      
      [zoom>=16] {
        ::outline {
          line-color: darken(@airport_outline, 10%);
        }
        
        polygon-fill: @airport_fill;
      }

      [zoom>=17] {
        ::outline {
          line-width: 3;
        }
      }

      [zoom>=19] {
        ::outline {
          line-width: 5;
        }
      }
    }
  }
}