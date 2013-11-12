@road: #b3bcbc;
@minor_road: #4d73a0;

#road {
  ['mapnik::geometry_type'=2] {
    
    [class='motorway'],
    [class='main'],
    [class='motorway_link'] {
      [zoom>=7] {
        ::outline {
          // line-color: darken(#aacacc, 20%);
          // line-color: darken(#b8d0d1, 20%);
          line-color: darken(@road, 20%);
          line-width: 2.5;
          // line-opacity: 0.5;
          // comp-op: color-burn;
          // image-filters: agg-stack-blur(1, 1);
        }

        // line-color: #6ec7cc;
        // line-color: #aacacc;
        line-color: @road;
        // line-join: round;
        // line-color: #b8d0d1;
        line-width: 2;
        // line-pattern-file: url("images/line2.png");
        // line-opacity: 0.5;
      }

      /*
      [class='main'] {
        ::outline {
            line-color: rgba(203, 32, 39, 0.2); // fade(#cb2027, 20%);
            line-width: 2;
        }
        
        line-width: 0;

        [zoom>=9] {
          ::outline {
            line-color: rgba(203, 32, 39, 0.3); // fade(#cb2027, 30%);
            line-width: 2.5;
          }
        }
        
        [zoom>=10] {
          ::outline {
            line-color: #cb2027;
            line-width: 2.5;
          }
        
          line-width: 1;
        }
        
        [zoom>=11] {
          ::outline {
            line-width: 4;
          }
          
          line-width: 2;
        }
      }
      
      [zoom>=15] {
        ::outline {
          line-width: 7;
        }
        
        line-width: 4;
      }

      [zoom>=16] {
        ::outline {
          line-width: 10;
        }
        
        line-width: 5;
        line-opacity: 0.4;
      }

      [zoom>=17] {
        ::outline {
          line-width: 12;
        }
        
        line-width: 7;
        line-opacity: 0.3;
      }
      */
    }
      
    [class='street'] {
      [zoom>=14] {
        line-width: 0.25;
        // line-color: rgba(203, 32, 39, 0.2); // fade(#cb2027, 20%);
        line-color: rgba(77, 115, 160, 0.2);
      }
      
      [zoom>=15] {
        line-width: 2;
      }
      
      [zoom>=16] {
        line-width: 4;
        // line-color: rgba(203, 32, 39, 0.35); // fade(#cb2027, 35%);
        line-color: rgba(77, 115, 160, 0.35);
      }

      [zoom>=17] {
        line-width: 6;
      }
    }
    
    [class='street_limited'],
    [class='service'] {
      [zoom>=16] {
        line-width: 3;
        line-color: rgba(203, 32, 39, 0.35); // fade(#cb2027, 35%);
      }

      [zoom>=17] {
        line-width: 5;
      }
    }
    
    [class='path'] {
      [zoom>=16] {
        line-width: 3;
        line-color: rgba(203, 32, 39, 0.35); // fade(#cb2027, 35%);
      }

      [zoom>=17] {
        line-width: 5;
      }
    }
  }
}

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
      */

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


/*
#aeroway[type='runway'] {
  line-color: #cb2027;
  line-opacity: 0.2;
  comp-op: color-burn;

  [zoom>=11] {
    line-width: 0.75;
  }

  [zoom>=12] {
    line-width: 1.5;
  }
  
  [zoom>=13] {
    line-width: 3;
  }

  [zoom>=14] {
    line-width: 8;
  }

  [zoom>=15] {
    line-width: 16;
  }

  [zoom>=16] {
    line-width: 32;
  }

  [zoom>=17] {
    line-width: 64;
  }

  [zoom>=18] {
    line-width: 128;
  }

  [zoom>=18] {
    line-width: 256;
  }
}

#aeroway[type='taxiway'] {
  line-color: #cb2027;
  line-opacity: 0.2;
  comp-op: color-burn;

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
    line-width: 4;
  }

  [zoom>=16] {
    line-width: 8;
  }

  [zoom>=17] {
    line-width: 20;
  }

  [zoom>=18] {
    line-width: 40;
  }

  [zoom>=19] {
    line-width: 80;
  }
}

#road[aeroway='runway'] {
  ['mapnik::geometry_type'=2] {
    ::outline {
      line-color: #cb2027;
      line-width: 5;
      line-opacity: 0.25;
      comp-op: color-burn;
      image-filters: agg-stack-blur(1, 1);
    }

    line-color: white;
    line-width: 2;
    line-opacity: 0.25;
  }
}

*/
