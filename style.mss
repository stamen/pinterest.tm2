// Languages: name (local), name_en, name_fr, name_es, name_de
@name: [name_en];

// Common Colors //
@water: #e2e1e2;
// @water: #f0f;
@park: #cec;
// @park: #96e296;
// @park: mix(#cec, #96e296, 70);


Map {
  font-directory: url("fonts/");
  background-image: url("images/ricepaper_30.png");
}

#water {
  ::shadow {
    line-color: #ccc;
    line-gamma: 20;
    line-width: 2;
    line-simplify-algorithm: visvalingam-whyatt;
    line-simplify: 5;
    image-filters: agg-stack-blur(2, 2);
  }
  
  ::outline_blur {
    line-color: #5e7884;
    line-gamma: 5;
    line-width: 1.5;
    line-simplify-algorithm: visvalingam-whyatt;
    line-simplify: 5;
    image-filters: agg-stack-blur(1, 1);
  }
  
  ::outline {
    line-color: #4d73a0;
    line-gamma: 5;
    line-width: 1.5;
    line-simplify-algorithm: visvalingam-whyatt;
    line-simplify: 5;
    // line-smooth: 1;
  }

  polygon-pattern-file: url("images/blue_paper_512.png");
  
  [zoom>=9] {
  ::shadow {
      line-simplify-algorithm: visvalingam-whyatt;
      line-simplify: 5;
    }
  
    ::outline_blur {
      line-simplify-algorithm: visvalingam-whyatt;
      line-simplify: 5;
    }
  
    ::outline {
      line-simplify-algorithm: visvalingam-whyatt;
      line-simplify: 5;
      // line-smooth: 1;
    }
    
    // polygon-pattern-smooth: 1;
    polygon-pattern-simplify-algorithm: visvalingam-whyatt;
    polygon-pattern-simplify: 5;
  }

  [zoom>=14] {
    ::outline_blur {
      line-width: 1.5;
      // line-smooth: 1;
    }
    
    ::outline {
      line-width: 2;
    }
  }
}

// Political boundaries //

#admin {
  [zoom<=9] {
    // Countries
    [admin_level=2] {
      ::blur {
        line-join: round;
        line-width: 1;
        line-color: #a8a7a5;
        image-filters: agg-stack-blur(4, 4);
      }
    
      line-width: 1;
      line-color: #bbb;
    
      [zoom>=3] {
        line-color: #999;
      }
    
      [zoom>=6] {
        line-width: 1;
      }
    
      [zoom>=8] {
        line-width: 4;
      }
    
      [disputed=1] {
        line-dasharray: 4,4;
      }
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
      ::blur {
        line-width: 0;
      }
      line-width: 0;
      line-color: transparent;
    }
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
    [zoom>=15] { line-width: 1.5; }
    [zoom>=16] { line-width: 2; }
    [zoom>=17] { line-width: 2.5; }
    [zoom>=18] { line-width: 3; }
  }
}

/*
#landuse_overlay {
  text-face-name: "Frutiger LT 55 Roman Regular";
  text-name: [class];
  polygon-fill: #ccc;
  polygon-opacity: 0.5;
}
*/

#landuse {
  polygon-fill: transparent;
  polygon-comp-op: multiply;
  line-width: 0;
  
  [zoom>=8] {
    polygon-opacity: 1;
  }
  
  [zoom>=9] {
    polygon-opacity: 0.8;
  }
  
  [zoom>=10] {
    polygon-opacity: 0.6;
  }
  
  [zoom>=11] {
    polygon-opacity: 0.8;
  }
  
  [zoom>=12] {
    line-width: 0.75;
    line-opacity: 0.5;
    polygon-opacity: 1;
  }

  [class='park'] {
    polygon-fill: @park;
    line-color: #6AA874;
    
    [zoom>=16] { 
      line-width: 1; 
      line-opacity: 0.75;
    }
    
    [zoom>=17] {
      line-width: 1.25; 
    }
    
    [zoom>=18] { 
      line-width: 2; 
    }
  }

  [class='cemetery'],
  [class='pitch'] {
    polygon-fill: @park;
    line-color: lighten(#518757, 20%);

    [zoom>=12] {
      line-width: 0.25;
    }
    
    [zoom>=15] {
      line-width: 0.5;
      line-opacity: 0.75; 
    }
   
    [zoom>=16] {
      line-width: 0.75;
      line-opacity: 1;
    }
    
    [zoom>=17] {
      line-width: 1.25; 
    }
    
    [zoom>=18] {
      line-width: 1.25; 
    }
  }

  [class='wood'] {
    polygon-fill: @park;
    line-color: #6AA874;
    
    [zoom>=15] { 
      line-width: 0.5; 
    }
    
    [zoom>=16] { 
      line-width: 0.75; 
    }
    
    [zoom>=17] { 
      line-width: 1; 
    }
  }

  [class='sand'] {
    //do not change 
    polygon-fill: #f2eedd;
    polygon-opacity: 0.5;
    
    //outline
    line-color: #CEBF7A;
    
    [zoom>=16] { 
      line-width: 0.75; 
      line-opacity: 0.75;
    }
    
     [zoom>=17] { 
      line-width: 1; 
      line-opacity: 1;
    }
    
    [zoom>=18] { 
      line-width: 1.25; 
     }
  }

  [class='hospital'],
  [class='school'] {
    polygon-fill: lighten(#fc0, 40%);
    polygon-opacity: 0.25;

  	[zoom>=12] {
      line-color: #999;
    }
    
    [zoom>=17] { 
      line-color: #999;
      line-width: 1;
      line-opacity: 0.75;
    }
    
    [zoom>=18] { 
      line-width: 1.25;
      line-opacity: 0.75;
    }
    
     [zoom>=19] { 
      line-width: 1.5;
      line-opacity: 1;
    }
  }
  
  [class='industrial'] {
    // TODO
    // polygon-fill: #f0f;
  }
}

#building {
  [zoom>=13] {
    polygon-fill: #eee;
    comp-op: multiply;
  }
  
  [zoom>=14] {
    polygon-fill: #f9f9f9;
    line-color: #ddd;
    line-width: 0.25;
  }
  
  [zoom>=16] {
    line-width: 0.5;
    building-fill: #f9f9f9;
    building-height: 1;
  }
  
  [zoom>=17] {
    line-width: 1.5;
    building-fill: #f9f9f9;
    building-height: 1.5;
  }
  
  [zoom>=18] {
    line-width: 2;
    building-fill: #f9f9f9;
    building-height: 2;
  } 
}

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
*/