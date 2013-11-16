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

  ['mapnik::geometry_type'=2] {
    [class='motorway'] {
      [zoom>=5] {
        ::outline {
          line-width: 2;
          line-color: @road_halo;
        }

        line-color: @road;
        line-width: 1;
      }

      [zoom>=6] {
        line-color: @road;
        line-width: 1.25;
      }

      [zoom>=7] {
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

      [zoom>=17] {
        ::outline {
          line-width: 3;
        }

        line-width: 2.5;
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

      [zoom>=15] {
        ::outline {
          line-color: darken(@road, 10%);
          line-width: 2.5;
        }

        line-color: @road;
        line-width: 1.5;
      }
    }
    
    [class='main'] {
      [zoom>=7] {
        ::outline {
          line-width: 1.5;
          line-color: @road_halo;
        }
        
        line-color: lighten(@road, 7.5%);
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

        line-width: 1.25;
      }
      
      [zoom>=17] {
        ::outline {
          line-color: darken(@road, 20%);
          line-width: 3;
        }

        line-width: 2.25;
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
    
    // footpath
    [class='path'] {
      [zoom>=15] {
       line-width: 0.25;
       line-color: #56452e;
       line-opacity: 0.35;
       line-dasharray: 5,2;
      }
      
      [zoom>=16] {
        line-width: 0.5;
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
    
    [class='major_rail'],
    [class='minor_rail'] {
      [zoom>=12] {
        line-width: 0.25;
        line-color: #ccc;
      }
      
      [zoom>=15] {
        line-color: #aaa;
      }
      
      [zoom>=16] {
        ::left {
          line-offset: 0.25;
          line-color: #aaa;
          line-dasharray: 1, 5;
        }
        
        line-width: 0.5;
      }
      
      [zoom>=17] {
        ::left {
          line-offset: 0.5;
          line-dasharray: 1, 7.5;
        }

        line-width: 0.75;
      }
      
      [zoom>=18] {
        ::left {
          line-offset: 1;
          line-dasharray: 1, 10;
        }
      }
    }
  }
}

#tunnel {
  ['mapnik::geometry_type'=2] {
    [class='motorway'] {
      [zoom>=12] {
        line-width: 2.5;
        line-color: @road;
        line-opacity: 0.4;
      }
    
      [zoom>=14] {
        line-width: 3;
      }

      [zoom>=17] {
        line-width: 4;
      }
    }
  
    [class='motorway_link'] {
      [zoom>=12] {
        line-width: 1;
        line-color: @road;
        line-opacity: 0.4;
      }

      [zoom>=17] {
        line-width: 3;
      }
    }

    [class='main'] {
      [zoom>=12] {
        line-width: 0.75;
        line-color: @road;
        line-opacity: 0.4;
      }

      [zoom>=13] {
        line-width: 1;
      }
    
      [zoom>=14] {
        line-width: 3;
      }
    }
  
    [class='street'] {
      [zoom>=12] {
        line-width: 1;
        line-color: mix(#ddd, @road, 50);
        line-opacity: 0.4;
      }
    
      [zoom>=15] {
        line-width: 1.5;
        line-color: @road;
      }

      [zoom>=16] {
        line-width: 2;
      }
    }
  
    [class='path'] {
      [zoom>=16] {
        line-width: 0.25;
        line-color: #56452e;
        line-opacity: 0.4;
        line-dasharray: 5,2;
      }
    }
    
    [class='major_rail'],
    [class='minor_rail'] {
      [zoom>=12] {
        line-width: 0.5;
        line-color: #ccc;
        line-opacity: 0.2;
      }
      
      [zoom>=15] {
        line-color: #aaa;
      }
      
      [zoom>=16] {
        line-width: 0.75;
      }
      
      [zoom>=17] {
        line-width: 1;
      }
    }

  }
}

#bridge {
  ::shadow {
    line-width: 0;
    line-cap: butt;
  }
  
  ::outline {
    line-color: @road_halo;
    line-width: 0;
    line-cap: square;
  }
  
  ::left {
    line-color: darken(@road, 20%);
    line-width: 0;
    line-cap: square;
  }
  
  ::right {
    line-color: darken(@road, 20%);
    line-width: 0;
    line-cap: square;
  }

  line-width: 0;
  line-cap: square;
  
  ['mapnik::geometry_type'=2] {
    [class='motorway'] {
      [zoom>=12] {
        ::shadow {
          line-geometry-transform: translate(1, 1);
          line-width: 3;
          line-opacity: 0.05;
          line-comp-op: multiply;
        }
      
        ::left {
          line-width: 0.75;
          line-offset: -1.25;
        }
      
        ::right {
          line-width: 0.75;
          line-offset: 1.25;
        }

        line-width: 2.5;
        line-color: @road;
      }
      
      [zoom>=14] {
        ::left {
          line-offset: -1.75;
        }
       
        ::right {
          line-offset: 1.75;
        }
 
        line-width: 3;
      }

      [zoom>=17] {
        ::left {
          line-offset: -2.25;
        }
       
        ::right {
          line-offset: 2.25;
        }
 
        line-width: 4;
      }
    }
    
    [class='motorway_link'] {
      [zoom>=12] {
        ::shadow {
          line-geometry-transform: translate(1, 1);
          line-width: 1;
          line-opacity: 0.05;
          line-comp-op: multiply;
        }
      
        ::left {
          line-width: 0.75;
          line-offset: -0.75;
        }
      
        ::right {
          line-width: 0.75;
          line-offset: 0.75;
        }

        line-width: 1;
        line-color: @road;
      }

      [zoom>=17] {
        ::shadow {
          line-width: 3;
        }
      
        ::left {
          line-width: 0.75;
          line-offset: -1.25;
        }
      
        ::right {
          line-width: 0.75;
          line-offset: 1.25;
        }

        line-width: 2.5;
      }
    }
    
    [class='main'] {
      [zoom>=12] {
        ::shadow {
          line-geometry-transform: translate(1, 1);
          line-width: 1;
          line-opacity: 0.05;
          line-comp-op: multiply;
        }
      
        ::left {
          line-width: 0.25;
          line-offset: -0.25;
        }
      
        ::right {
          line-width: 0.25;
          line-offset: 0.25;
        }

        line-width: 0.75;
        line-color: @road;
      }
      
      [zoom>=13] {
        ::shadow {
          line-width: 2;
        }
        
        ::left {
          line-width: 0.75;
          line-offset: -0.75;
        }
        
        line-width: 1;
      }
      
      [zoom>=14] {
        ::shadow {
          line-width: 3;
        }
        
        ::left {
          line-offset: -1.5;
        }
        
        ::right {
          line-offset: 1.5;
        }
        
        line-width: 3;
      }
    }
    
    [class='street'] {
      [zoom>=12] {
        ::shadow {
          line-geometry-transform: translate(1, 1);
          line-width: 1;
          line-opacity: 0.05;
          line-comp-op: multiply;
        }
      
        ::left {
          line-width: 0.25;
          line-offset: -0.75;
        }
      
        ::right {
          line-width: 0.25;
          line-offset: 0.75;
        }

        line-width: 1;
        line-color: mix(#ddd, @road, 50);
      }
      
      [zoom>=15] {
        ::left {
          line-width: 0.75;
          line-offset: -1.25;
        }
        
        ::right {
          line-width: 0.75;
          line-offset: 1.25;
        }
        
        line-width: 1.5;
        line-color: @road;
      }
      
      [zoom>=16] {
        ::left {
          line-offset: -1.5;
        }
        
        ::right {
          line-offset: 1.5;
        }
        
        line-width: 2;
      }
    }
    
    [class='service'],
    [class='street_limited'], // closed / under construction
    [class='service'],
    [class='driveway'] {
      line-width: 0;
    }
    
    [class='path'] {
      [zoom>=16] {
        ::left {
          line-color: @road_halo;
          line-opacity: 0.8;
          line-width: 0.5;
          line-offset: -1;
        }
        
        ::right {
          line-color: @road_halo;
          line-opacity: 0.8;
          line-width: 0.5;
          line-offset: -1;
        }
        
        line-color: @road_halo;
        line-opacity: 0.8;
        line-width: 2;
        
        ::path {
          line-width: 0.25;
          line-color: #46452e;
          line-dasharray: 5,2;
        }
      }
    }

    [class='major_rail'],
    [class='minor_rail'] {
      [zoom>=12] {
        ::outline {
          line-width: 2;
        }
      
        line-width: 0.25;
        line-color: #ccc;
      }
      
      [zoom>=15] {
        line-color: #aaa;
      }
      
      [zoom>=16] {
        ::outline {
          line-width: 4;
        }

        ::left {
          line-width: 1;
          line-offset: 0.5;
          line-color: #aaa;
          line-dasharray: 1, 5;
        }
        
        line-width: 0.75;
      }
      
      [zoom>=17] {
        ::left {
          line-offset: 0.75;
          line-dasharray: 1, 7.5;
        }

        line-width: 1;
      }
      
      [zoom>=18] {
        ::outline {
          line-width: 8;
        }

        ::left {
          line-offset: 1;
          line-dasharray: 1, 10;
        }
      }
    }
  }
}

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
