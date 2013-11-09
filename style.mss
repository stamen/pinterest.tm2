// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Common Colors //
@water: #c3e6ff;
@park: #cec;

Map {
  font-directory: url("fonts/");
  background-color:#333;
}

#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: 'V5 Prophit Cell';
  // text-face-name: 'Dimitri Regular';
  text-transform: lowercase;
  text-line-spacing: -10;
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: orange;
  // text-fill: lighten(#368dce, 20%);
  text-size: 30;
  text-min-distance: 25;
  text-halo-fill: #333;
  text-halo-radius: 10;
  
  [zoom=10] {
    text-size: 40;
  }
}

#water {
  polygon-fill: #444;
  polygon-gamma: 5;
}

#landuse {
  [class='park'] {
    polygon-fill: #6058af;
    polygon-opacity: 0.75;
    // polygon-comp-op: multiply;
    
    [zoom>=12] {
      line-color: white;
      line-width: 0.75;
      line-opacity: 0.75;
    }
  }

  [class='cemetery'],
  [class='pitch'] {
    polygon-fill: #cec;
    polygon-opacity: 0.65;
    // polygon-comp-op: multiply;

    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }

  [class='sand'] {
    polygon-fill: #f2eedd;
    polygon-opacity: 0.5;
    // polygon-comp-op: multiply;

    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }

  [class='hospital'],
  [class='school'] {
    polygon-fill: lighten(#aacacc, 10%);
    polygon-opacity: 0.25;
    // polygon-comp-op: multiply;

    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }
  
  [class='wood'] {
    polygon-fill: #56e256;
    polygon-opacity: 0.75;
    // polygon-comp-op: multiply;

    [zoom>=12] {
      line-color: white;
      line-width: 0.75;
      line-opacity: 0.75;
    }
  }
}

// Political boundaries //

#admin {
  /*
  ::blur {
    line-join: round;
    line-color: #cb2027;
    image-filters: agg-stack-blur(1, 1);
    line-width: 1.5;
    line-opacity: 0.5;
  }
  */
  
  
  // Countries
  [admin_level=2] {
    line-join: round;
    line-color: #777;
    
    /*
    ::blur {
      line-join: round;
      image-filters: agg-stack-blur(1, 1);
      line-width: 1.5;
      line-opacity: 0.5;
    }
    */
    
    line-width: 1.5;
    /*
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 4; }
    */
    [disputed=1] { line-dasharray: 4,4; }
  }
  /*
  // States / Provices / Subregions
  [admin_level>=3] {
    line-width: 0.4;
    line-dasharray: 10,3,3,3;
    [zoom>=6] { line-width: 1; }
    [zoom>=8] { line-width: 2; }
    [zoom>=12] { line-width: 3; }
  }
  */

  [maritime=1] {
    line-width: 0;
  }
}

#road {
  ['mapnik::geometry_type'=2] {
    ::swirly {
      line-smooth: 25;
      line-width: 0.5;
      line-color: #fc0;
      line-opacity: 0.5;
      line-comp-op: exclusion;
    }
    
    line-simplify: 20;
    
    [class='motorway'],
    [class='main'],
    [class='motorway_link'] {
      ::outline {
        line-color: #4a92a8;
        line-width: 12;
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
        
        // polygon-fill: orange;
        line-width: 0;

        [zoom>=9] {
          ::outline {
            // line-color: rgba(203, 32, 39, 0.3); // fade(#cb2027, 30%);
            line-color: rgba(74, 146, 168, 0.3); // fade(#4a92a8, 30%);
            line-width: 2.5;
          }
        }
        
        [zoom>=10] {
          ::outline {
            // line-color: #cb2027;
            line-color: rgba(74, 146, 168, 0.3); // fade(#4a92a8, 30%);
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


#place_label {
  text-name: @name;
  text-face-name: 'RFX Splatz Regular';
  text-fill: orange;
  text-comp-op: exclusion;
  text-size: 60;
  text-wrap-width: 200;
  text-wrap-before: true;
  text-character-spacing: 25;
}

#road_label {
  // text-name: 'a';
  text-name: [name];
  text-face-name: 'WC Rhesus A Bta Regular';
  text-placement: line;
  text-min-distance: 0;
  text-character-spacing: 5;
  text-size: 20;
  text-fill: #fc0;
}

/*

// Places //

#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: 'FeliX Regular';
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