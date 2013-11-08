// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Common Colors //
@water: #c3e6ff;
@park: #cec;

Map {
  background-color:#fff;
  background-image: url("images/sand.png");
}

#water {
  // polygon-pattern-file: url("images/felt2.png");
  // polygon-pattern-file: url("images/fabric2.png");
  polygon-pattern-file: url("images/px.png");
  polygon-pattern-gamma: 0.8;

  [zoom>=9] {
    polygon-pattern-gamma: 0.4;
  }

  [zoom>=11] {
    polygon-pattern-gamma: 0;
  }
  
  // comp-op: dst-out;
  
  // polygon-gamma: 0;
  // polygon-fill: #777;

  [zoom>=11] {
    ::shadow {
      line-gamma: 1;
      line-geometry-transform: translate(-1, -1);
      line-color: #333;
      line-width: 1;
      image-filters: agg-stack-blur(1, 1);
    }
  }
  
  /*
  ::texture {
    polygon-pattern-file: url("images/fabric2.png");
    polygon-pattern-gamma: 0;
  }
  */
  
  /*
  ::shadow {
    line-geometry-transform: translate(-2.5, -2.5);
    line-color: #666;
    line-width: 2;
    image-filters: agg-stack-blur(5, 5);
  }
  */
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: #666; // fake the background texture
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }

  [type='stream'] {
    line-color: #666;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}

#landuse {
  [class='park'] {
    polygon-fill: desaturate(@park, 70%);
    comp-op: color-burn;
  }
}

#road {
  ['mapnik::geometry_type'=2] {
    
    [class='motorway'],
    [class='main'],
    [class='motorway_link'] {
      ::outline {
        line-color: #cb2027;
        line-width: 5;
        line-opacity: 0.5;
        comp-op: color-burn;
        image-filters: agg-stack-blur(1, 1);
      }

      line-color: white;
      line-width: 2;
      line-opacity: 0.5;

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
    }
    
    [class='street'] {
      line-width: 0.75;
      line-color: rgba(203, 32, 39, 0.2); // fade(#cb2027, 20%);
      
      [zoom>=15] {
        line-width: 2;
      }
      
      [zoom>=16] {
        line-width: 4;
        line-color: rgba(203, 32, 39, 0.35); // fade(#cb2027, 35%);
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
  }
}

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

#tunnel {
  ['mapnik::geometry_type'=2] {
    [class='motorway'],
    [class='main'],
    [class='motorway_link'] {
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
}

#bridge {
  ['mapnik::geometry_type'=2] {
    [class='motorway'],
    [class='main'],
    [class='motorway_link'] {
      ::outline {
        line-color: #cb2027;
        line-width: 5;
        line-opacity: 0.75;
        image-filters: agg-stack-blur(1, 1);
      }

      line-color: white;
      line-width: 2;
      line-opacity: 0.75;

      ::right {
	    line-offset: 2.5;
        line-width: 0.5;
        line-opacity: 0.5;
        line-color: #cb2027;
      }
    
      ::left {
	    line-offset: -2.5;
        line-width: 0.5;
        line-opacity: 0.5;
        line-color: #cb2027;
      }
    
      [zoom>=15] {
        ::outline {
          line-width: 7;
        }
       
        line-width: 4;
        line-opacity: 0.55;

        ::right {
	      line-offset: 3.5;
          line-width: 0.5;
        }
    
        ::left {
	      line-offset: -3.5;
          line-width: 0.5;
        }
      }

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

// TODO street, etc. bridges

// Political boundaries //

/*
#admin {
  
  [maritime=1] {
    line-color: transparent;
    line-width: 0;
  }
  
  [admin_level=1] {
    line-color: red;
    line-width: 5;
  }
  
  // Countries
  [admin_level=2] {
    ::shadow {
      line-geometry-transform: translate(-2.5, -2.5);
      line-color: #666;
      line-width: 2;
      image-filters: agg-stack-blur(5, 5);
    }
    
    // line-width: 5;
    line-pattern-file: url("images/line2.png");
    line-join: round;
    line-color: #bbe;
  }
}
*/

/*
// Places //

#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: 'Source Sans Pro Bold';
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #66a;
  text-size: 12;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 14;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 16;
  }
}

#country_label_line {
  line-color: #324;
  line-opacity: 0.05;
}

#place_label {
  [type='city'][zoom<=15] {
    text-name: @name;
    text-face-name: 'Source Sans Pro Semibold';
    text-fill: #444;
    text-size: 16;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=10] { text-size: 18; }
    [zoom>=12] { text-size: 24; }
  }
  [type='town'][zoom<=17] {
    text-name: @name;
    text-face-name: 'Source Sans Pro Regular';
    text-fill: #333;
    text-size: 14;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=10] { text-size: 16; }
    [zoom>=12] { text-size: 20; }
  }
  [type='village'] {
    text-name: @name;
    text-face-name: 'Source Sans Pro Regular';
    text-fill: #444;
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=12] { text-size: 14; }
    [zoom>=14] { text-size: 18; }
  }
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-name: @name;
    text-face-name: 'Source Sans Pro Regular';
    text-fill: #666;
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=14] { text-size: 14; }
    [zoom>=16] { text-size: 16; }
  }
}


// Water Features //

#water {
  polygon-fill: @water;
  polygon-gamma: 0.6;
}

#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: 'Source Sans Pro Italic';
    text-fill: darken(@water, 30%);
    text-size: 13;
    text-wrap-width: 100;
    text-wrap-before: true;
  }
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}


// Landuse areas //

#landuse {
  [class='park'] { polygon-fill: @park; }
}

#area_label {
  [class='park'] {
    [zoom<=13],  // automatic area filtering @ low zooms
    [zoom>=14][area>500000],
    [zoom>=16][area>10000],
    [zoom>=17] {
      text-name: @name;
      text-face-name: 'Source Sans Pro Italic';
      text-fill: darken(@park, 50%);
      text-size: 13;
      text-wrap-width: 100;
      text-wrap-before: true;
    }
  }
}


// Buildings //

#building {
  polygon-fill: #f9f0e3;
}


// Roads & Railways //

#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    line-color: #cde;
    line-width: 0.5;
    [class='motorway'],
    [class='main'] {
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 2; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=14] { line-width: 1; }
      [zoom>=16] { line-width: 2; }
    }
    [class='street_limited'] { line-dasharray: 4,1; }
  }
}

*/