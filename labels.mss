@primary_label: #cb2027;
@label: #4d73a0;

@halo: rgba(245, 242, 231, 0.90);

#country_label[zoom>=3] {
  text-orientation: [osm_id] % 3 - 1.5;

  [osm_id<0] {
    text-orientation: ([osm_id] * -1) % 3 - 1.5;
  }

  text-name: @name;
  text-face-name: "KG Second Chances Solid Regular";
  text-transform: uppercase;
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: lighten(@label, 10%);
  text-halo-fill: @halo;
  text-halo-radius: 2;
  text-size: 11;
  text-min-distance: 25;
  text-character-spacing: 1;
  text-line-spacing: -2;
  
  [zoom=4] {
    text-min-distance: 2;
  }
  
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-line-spacing: -4;
    text-character-spacing: 2;
    text-size: 20;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-character-spacing: 2.5;
    text-size: 17;
  }
  
  [zoom>=9] {
    text-name: '';
  }
}

// TODO pay attention to attributes
#country_label_line {
  [zoom>=4] {
    // text-face-name: "Frutiger LT 45 Light Bold";
    // text-name: [z];
    // text-fill: white;
    
    line-color: #4d73a0;
    image-filters: agg-stack-blur(1, 1);
    // line-opacity: 0.05;
  }
}

#place_label {
  text-orientation: [osm_id] % 3 - 1.5;

  [osm_id<0] {
    text-orientation: ([osm_id] * -1) % 3 - 1.5;
  }

  text-name: '';
  text-face-name: "KG Second Chances Solid Regular";
  text-fill: @label;
  text-halo-fill: @halo;
  text-transform: uppercase;
  text-min-padding: 0;
  
  [type='city'] {
    text-face-name: "KG Second Chances Solid Regular";
    text-character-spacing: 4;
    text-fill: lighten(@label, 20%);
    text-halo-radius: 3;
    text-size: 27;
    text-line-spacing: -4;
    text-wrap-width: 100;
    text-wrap-before: true;
    
    [zoom>=8] {
      text-name: @name;
  
      text-size: 21;
      text-character-spacing: 2;
      text-line-spacing: -5;
      
      text-min-distance: 50;
      // debug-mode: collision;
      
      [scalerank<=7] {
        // text-name: [scalerank] + ': ' + [name_en];
        text-face-name: "KG Second Chances Sketch Regular";
        text-size: 24;
        text-fill: @primary_label;
        text-min-distance: 25;
      }
      
      [scalerank<=4] {
        text-size: 26;
      }
      
      [scalerank<=1] {
        text-size: 28;
      }
    }
    
    [zoom>=9] {
      text-name: @name;
  
      text-size: 21;
      text-character-spacing: 2;
      text-line-spacing: -5;
      
      text-min-distance: 50;
      // debug-mode: collision;
      
      [scalerank<=10] {
        // text-name: [scalerank] + ': ' + [name_en];
        text-face-name: "KG Second Chances Sketch Regular";
        text-size: 24;
        text-fill: @primary_label;
        text-min-distance: 25;
      }
      
      [scalerank<=5] {
        text-size: 26;
      }
      
      [scalerank<=1] {
        text-size: 28;
      }
    }
    
    [zoom>=11] {
      // text-name: @name;
      // text-name: [scalerank] + ': ' + [name_en];
      text-face-name: "KG Second Chances Sketch Regular";
      text-fill: @primary_label;

      text-size: 40;
      text-character-spacing: 5;
      text-line-spacing: -7;
      
      text-min-distance: 25;
      // debug-mode: collision;
    }
    
    [zoom>=13] {
      text-min-distance: 0;
      text-min-padding: 0;
    }
    
    [zoom>=14] {
      text-size: 40;
      text-character-spacing: 5;
      text-line-spacing: -7;
    }
    
    [zoom>=15] {
      text-size: 50;
      text-character-spacing: 5;
      text-line-spacing: -7;
    }   
    
    [zoom>=16] {
      text-size: 55;
      text-character-spacing: 5;
      text-line-spacing: -7;
    }  
    
    [zoom>=18] {
      text-size: 0;
    } 
  }

  [type='town'][zoom<=17] {
    text-face-name: "KG Second Chances Solid Regular";
    text-fill: lighten(@label, 20%);
    text-halo-radius: 2.5;
    text-size: 21;
    text-wrap-width: 100;
    text-wrap-before: true;
    
    [zoom>=9] {
      text-name: @name;
      text-size: 16;
      text-character-spacing: 1.5;
      text-min-distance: 10;
      text-min-padding: 0;
    }

    [zoom>=11] {
      text-face-name: "KG Second Chances Sketch Regular";
      text-fill: @label;
      text-size: 24;
      text-character-spacing: 2.5;
    }
    
    [zoom>=12] {
      text-name: @name;
      text-size: 30;
      text-min-distance: 10;
    }
    
    [zoom>=13] {
      text-min-distance: 0;
    }
  }

  [type='village'] {
    text-face-name: "KG Second Chances Solid Regular";
    text-fill: lighten(@label, 20%);
    text-halo-radius: 2.5;
    text-wrap-width: 100;
    text-wrap-before: true;

    [zoom>=10] {
      text-name: @name;
      text-size: 12;
      text-character-spacing: 1.5;
    }
    
    [zoom>=11] {
      text-size: 15;
    }
    
    [zoom>=12] {
      text-size: 21;
      text-min-distance: 50;
    }
    
    [zoom>=13] {
      text-min-distance: 0;
    }
    
    [zoom>=14] { text-size: 27; }
  }
  
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-face-name: "Songbird Regular", "MisterEarl XLt BT Extra Light";
    text-fill: lighten(@label, 15%);
    text-character-spacing: 1.5;
    text-halo-radius: 3;
    text-size: 26;
    text-line-spacing: -10;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-avoid-edges: true;
    text-min-distance: 5;
    
    [zoom>=13] {
      [type='suburb'],
      [type='neighbourhood'] {
        text-name: @name;
      }
    }
    
    [zoom>=14] {
      [type='hamlet'] {
        text-name: @name;
      }
      
      text-size: 32;
      text-line-spacing: -13;
      text-halo-radius: 3;
    }
  }
}

#poi_label {
  [type='Park'] {
    text-name: @name;
    text-face-name: "LA Headlights BTN Cond Bold";
    text-fill: darken(@park, 60%);
    text-halo-fill: @halo;
    text-halo-radius: 2.5;
    text-size: 16;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-line-spacing: -1;
    text-character-spacing: 2;
    text-avoid-edges: true;
    // text-min-distance: 128;
  }
}