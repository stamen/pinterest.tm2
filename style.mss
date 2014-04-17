// Languages: name (local), name_en, name_fr, name_es, name_de
@name: "[name_es].replace('-', '- ')";

// Common Colors //
@water: #719399;
@park: #cec;

@road_font: "Frutiger LT 45 Light Regular", "Arial Unicode MS Regular";
@solid_label_font: "KG Second Chances Solid Regular", "Arial Unicode MS Regular";
@sketch_label_font: "KG Second Chances Sketch Regular", "Arial Unicode MS Regular";

Map {
  background-image: url("images/ricepaper_15.png");
  buffer-size: 128;
}

#hillshade {
  polygon-fill: transparent;
  polygon-opacity: 0.33;
  polygon-comp-op: multiply;

  [zoom>=11] {
    polygon-opacity: 0.25;
  }

  [class='medium_shadow'] {
    polygon-fill: lighten(#eee, 4%);
  }

  [class='full_shadow'] {
    polygon-fill: lighten(#ddd, 5%);
  }

  [class='medium_highlight'] {
    polygon-fill: #e9e9e9;
    polygon-opacity: 0.3;
    polygon-comp-op: lighten;

    [zoom>=11] {
      polygon-opacity: 0.1;
    }
  }

  [class='full_highlight'] {
    polygon-fill: #f0f0f0;
    polygon-opacity: 0.25;
    polygon-comp-op: lighten;

    [zoom>=11] {
      polygon-opacity: 0.35;
    }
  }
}

#water {
  ::shadow {
    polygon-fill: lighten(#444, 1%);

    [zoom<=6] {
      // fill in ocean seams
      polygon-gamma: 0.3;
    }
  }

  ::fill {
    // a white fill and overlay comp-op lighten the polygon-
    // fill from ::shadow.
    polygon-fill: #fff;
    comp-op: soft-light;
    // blurring reveals the polygon fill from ::shadow around
    // the edges of the water
    // NOTE: image-filters cannot be set per-zoom
    image-filters: agg-stack-blur(10, 10);
  }

  ::background {
    // applying the image with hard-light allows it to pick up
    // the shadow that was just applied
    // ::shadow's polygon-fill may need to be tweaked according
    // to the background in use
    polygon-pattern-file: url("images/blue_paper_512.png");
    comp-op: hard-light;
  }
}

// Political boundaries //
//////////////////////////\\\\\\\\\\\\\\//////////////\\\\\\\\\//////
#admin[maritime=0] {
  ::outline {
    line-cap: round;
    line-join: miter;
    line-width: 0;
    line-color: @road_halo;
  }

  line-join: round;
  line-width: 0;

  // Countries
  [admin_level=2] {
    line-width: 2;
    line-color: #bbb;
    
    [zoom>=3] {
      line-color: #999;
    }
    
    [zoom>=6] {
      line-width: 2;
    }
    
    [zoom>=7] {
      ::outline {
        line-width: 5;
      }

      line-color: #888;
    }
    
    [zoom>=8] {
      ::outline {
        line-width: 10;
      }

      line-width: 2.5;
      // line-dasharray: 12,4;
    }
  
    [disputed=1] {
      line-dasharray: 4,4;
    }
  }
  
  // States / Provinces / Subregions
  [admin_level=3],
  [admin_level=4], {
    line-width: 0;
    
    [zoom>=5] {
     // line-color: darken(#bbb, 20%);
     line-color: #bbb;
     line-width: 1;
     //line-dasharray: 10,3,3,3;
     //line-simplify: 10;
      
      [zoom>=6] { line-width: 1.5; }
      
      [zoom>=7] {
       // ::outline {
          line-width: 1.25;
          line-color: darken(#bbb, 15%);
        // line-dasharray: 10,3,3,3;
       // }
      }

      [zoom>=8] {
       // ::outline {
         // line-width: 3;
        //  line-width: 3.5;
        //  line-dasharray: 10,3,3,3;
       // }
        
        line-color: darken(#bbb, 15%); 
        line-width: 1.5;
      }
      
      [zoom>=9] { 
        line-width: 2; 
        line-color: darken(#bbb, 10%);
      }
      [zoom>=10] { line-width: 2.25; }
      [zoom>=11] { line-width: 2.5; }
      [zoom>=12] { line-width: 2.75; }
    }
  }
}

//////////////////////////\\\\\\\\\\\\\\//////////////\\\\\\\\\//////
#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0;
    [zoom>=11]  { line-width: 0.5; }
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0;
    [zoom>=11]  { line-width: 0.5; }
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
    polygon-opacity: 0.4;
  }
  
  [zoom>=9] {
    polygon-opacity: 0.5;
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
   
    [zoom>=12] {
      line-width: 0.25;
    }
    
    [zoom>=13] {
      line-width: 0.5;
      line-opacity: 0.75;
    }
    
    [zoom>=16] { 
      line-width: 0.75; 
      line-opacity: 0.75;
    }
    
    [zoom>=17] {
      line-width: 1; 
    }
    
    [zoom>=18] { 
      line-width: 1.5; 
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
/////\/\/\/\/\/\/////\/\/\/\/\
  [class='wood'] {
    polygon-fill: @park;
    line-gamma: 12;
    line-color: #6AA874;
    
    [zoom>=13] { 
      line-width: 0.25; 
    }
    
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
  [class='school'],
  [class='parking'],
  [class='industrial'],
  {
    polygon-fill: #EFE9DA;
    //polygon-fill: lighten(#fc0, 40%);
    polygon-opacity: 0.25;
     
    [zoom>=12] {
     line-color: darken(#efe9da, 10%);
     line-width: 0.5;
    }
    [zoom>=13] {
      line-color: darken(#efe9da, 20%);
      line-width: 0.5;
      }
    
  	[zoom>=15] {
      line-color: darken(#efe9da, 20%);
      line-width: 0.5;
    }
  
    [zoom>=17] { 
      line-color: darken(#efe9da, 20%);
      line-width: 0.75;
    }
    
    [zoom>=18] { 
      line-width: 1;
    }
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
  //  building-fill: #f9f9f9;
//    building-height: 1;
  }
  
  [zoom>=17] {
    
    building-fill: #f9f9f9;
    building-height: 1.5;
  }
  
  [zoom>=18] {
    line-width: 2;
    building-fill: #f9f9f9;
    building-height: 2;
  } 
}
