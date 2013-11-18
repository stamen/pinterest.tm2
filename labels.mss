@primary_label: #cb2027;
@label: #4d73a0;
@halo: rgba(245, 242, 231, 0.90);

#country_label[zoom>=3] {
  text-orientation: [osm_id] % 3 - 1.5;

  [osm_id<0] {
    text-orientation: ([osm_id] * -1) % 3 - 1.5;
  }

  text-name: '';
  text-face-name: @solid_label_font;
  text-transform: uppercase;
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: lighten(@label, 10%);
  text-halo-fill: @halo;
  text-halo-radius: 2;
  text-size: 11;
  text-min-distance: 2;
  text-character-spacing: 1;
  text-line-spacing: -2;
  text-placement-type: simple;
  text-placements: "X,N,S,NW,NE,SE,SW,W,E,11,10,9";
  text-dx: 2;
  text-dy: 2;
  text-align: center;
  text-horizontal-alignment: middle;
  
  [zoom>=3] {
    [scalerank<=3] {
      text-name: @name;
    }

    [scalerank<=2] {
      text-size: 15;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,15,14,13,12,11";
      text-character-spacing: 2.5;
      text-line-spacing: -5;
    }

    [scalerank<=1] {
      text-size: 18;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,18,17,16,15,14";
      text-character-spacing: 2.5;
      text-line-spacing: -5;
    }
  }
  
  [zoom>=4] {
    [scalerank<=4] {
      text-name: @name;
    }
    
    [scalerank<=3] {
      text-size: 14;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,14,13,12,11";
    }

    [scalerank<=2] {
      text-size: 18;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,18,17,16,15,14";
    }

    [scalerank<=1] {
      text-size: 24;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,24,23,22,21,20";
      text-character-spacing: 2.5;
      text-line-spacing: -5;
    }
  }
  
  [zoom>=5] {
    [scalerank<=5] {
      text-name: @name;
      text-size: 15;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,15,14,13,12,11";
      text-character-spacing: 1.5;
      text-min-distance: 15;
    }

    [scalerank<=3] {
      text-size: 20;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,20,19,18,17,16";
    }

    [scalerank<=2] {
      text-face-name: @sketch_label_font;
      text-size: 24;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,24,23,22,21,20";
    }
    
    [scalerank<=1] {
      text-fill: @primary_label;
      text-face-name: @sketch_label_font;
      text-size: 30;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,30,29,28,27,26";
      text-line-spacing: -8;
    }
  }
  
  [zoom>=6] {
    [scalerank<=6] {
      text-name: @name;
    }
    
    [scalerank<=1] {
      text-face-name: @sketch_label_font;
      text-size: 36;
    }
  }
  
  [zoom>=8] {
    text-name: '';
  }
}

#state_label[zoom<=7] {
  text-orientation: [osm_id] % 3 - 1.5;

  [osm_id<0] {
    text-orientation: ([osm_id] * -1) % 3 - 1.5;
  }

  text-name: '';
  text-face-name: @solid_label_font;
  text-transform: uppercase;
  text-fill: lighten(@label, 15%);
  text-halo-fill: @halo;
  text-halo-radius: 2;
  text-size: 14;
  text-character-spacing: 1;
  text-line-spacing: -3;
  text-wrap-width: 100;
  text-wrap-before: true;
  text-placement-type: simple;
  text-placements: "X,14,13,12,11";
  text-align: center;
  text-horizontal-alignment: middle;
  text-min-distance: 5;

  [zoom=5] {
    [name='California'] {
      text-orientation: -44;
      text-size: 20;
    }
    
    [name='Florida'] {
      text-orientation: -75;
      text-dx: 6;
      text-dy: 10;
    }

    [name='Kansas'] {
      text-orientation: 90;
      text-dx: -58;
    }
    
    [name='Md.'] {
      text-min-distance: 0;
    }
    
    [name='Mass.'] {
      text-min-distance: 0;
    }
    
    [name='Michigan'] {
      text-dy: 25;
    }
    
    [name='Mississippi'] {
      text-orientation: 80;
      text-dx: 5;
      text-size: 12;
    }
    
	[name='R.I.'] {
      text-dx: 15;
      text-min-distance: 0;
    }
    
    [name='Vt.'] {
      text-dy: -5;
      text-min-distance: 0;
    }
  }
  
  [zoom>=5] {
    text-name: @name;
  }
  
  [zoom=6] {
    [name='Kansas'] {
      text-dy: 40;
      text-min-distance: 0;
    }
  }
  
  [zoom>=6] {
    text-size: 20;
    text-halo-radius: 3;
    text-character-spacing: 2.5;
    text-line-spacing: -5;
    text-min-distance: 15;
  }
  
  [zoom>=7] {
    text-size: 26;
  }
}

#place_label {
  text-orientation: [osm_id] % 3 - 1.5;

  [osm_id<0] {
    text-orientation: ([osm_id] * -1) % 3 - 1.5;
  }

  text-name: '';
  text-face-name: @solid_label_font;
  text-fill: @label;
  text-halo-fill: @halo;
  text-transform: uppercase;
  text-min-padding: 1;
  text-align: center;
  text-horizontal-alignment: middle;
  
  [type='city'][zoom>=6][zoom<15] {
    text-face-name: @solid_label_font;
    text-fill: lighten(@label, 20%);
    text-halo-radius: 3;
    text-size: 16;
    text-line-spacing: -2.5;
    text-character-spacing: 2;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-placement-type: simple;
    text-placements: "X,N,S,NW,NE,SE,SW,W,E,16,15,14,13,12";
    text-dx: 2;
    text-dy: 2;
    
    [zoom>=6] {
      [scalerank<=3] {
        text-name: @name;
        text-face-name: @sketch_label_font;
        text-fill: @primary_label;
        text-min-distance: 25;
        text-min-padding: 1.5; // Atlanta, GA
      }
    }

    [zoom>=7] {
      [scalerank<=3] {
        text-name: @name;
        text-size: 18;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,18,17,16,15,14";
      }

      [scalerank<=1] {
        text-name: @name;
        text-size: 21;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,21,20,19,18,17";
      }
    }
    
    [zoom>=8] {
      [scalerank<=6] {
        text-name: @name;
        text-fill: lighten(@label, 20%);
  
        text-size: 16;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,16,15,14,13,12";
        text-character-spacing: 2;
        text-line-spacing: -5;
      
        text-min-distance: 50;
      }
      
      [scalerank<=4] {
        text-face-name: @sketch_label_font;
        text-fill: @primary_label;
        text-size: 20;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,20,19,18,17,16";
      }
      
      [scalerank<=2] {
        text-size: 24;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,24,23,22,21,20";
      }
    }
    
    [zoom>=9] {
      [scalerank<=9] {
        text-name: @name;
        text-size: 18;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,18,17,16,15,14";
        text-character-spacing: 2;
        text-line-spacing: -5;
        text-min-distance: 50;
      }
      
      [scalerank<=10] {
        text-face-name: @sketch_label_font;
        text-size: 20;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,20,19,18,17,16";
      }
      
      [scalerank<=5] {
        text-size: 22;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,22,21,20,19,18";
      }
      
      [scalerank<=1] {
        text-size: 24;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,24,23,22,21,20";
      }
    }
    
    [zoom>=11] {
      text-face-name: @sketch_label_font;
      text-fill: @primary_label;

      text-size: 20;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,20,19,18,17,16";
      text-character-spacing: 5;
      text-line-spacing: -7;
      text-min-distance: 25;

      [scalerank<=10] {
        text-fill: @primary_label;
        text-size: 24;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,24,23,22,21,20";
        text-character-spacing: 5;
        text-line-spacing: -7;
        text-min-distance: 25;
      }
      
      [scalerank<=5] {
        text-size: 30;
        text-placements: "X,N,S,NW,NE,SE,SW,W,E,30,29,28,27,26,25,24,20,15";
        text-character-spacing: 5;
        text-line-spacing: -7;
        text-min-distance: 25;
        
        text-dy: 3; // Portland, OR
      }
      
      [scalerank<=1] {
        text-dy: 5; // London
      }
    }

    [zoom>=13] {
        text-min-padding: 2; // Boston, MA
    }
  }

  [type='town'][zoom<=17] {
    text-face-name: @solid_label_font;
    text-fill: lighten(@label, 20%);
    text-halo-radius: 2.5;
    text-size: 15;
    text-line-spacing: -2;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-placement-type: simple;
    text-placements: "X,N,S,NW,NE,SE,SW,W,E,15,14,13,12,11";
    text-dx: 2;
    text-dy: 2;
    
    [zoom>=10] {
      text-name: @name;
      text-character-spacing: 1.5;
      text-min-distance: 100;
    }

    [zoom>=11] {
      text-face-name: @sketch_label_font;
      text-fill: @label;
      text-size: 18;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,18,17,16,15,14";
      text-line-spacing: -4;
      text-character-spacing: 2;
    }
    
    [zoom>=12] {
      text-name: @name;
      text-size: 19;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,19,18,17,16,15";
      text-line-spacing: -5;
      text-min-distance: 100;
    }
    
    [zoom>=13] {
      text-min-distance: 10;
    }
  }

  [type='village'] {
    text-face-name: @solid_label_font;
    text-fill: lighten(@label, 20%);
    text-halo-radius: 2.5;
    text-size: 15;
    text-character-spacing: 1.5;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-placement-type: simple;
    text-placements: "X,N,S,NW,NE,SE,SW,W,E,15,14,13,12,11";
    text-dx: 2;
    text-dy: 2;
    text-min-padding: 1.4; // Prebbleton, NZ (near Christchurch)

    [zoom>=11] {
      text-name: @name;
      text-min-distance: 100;
    }
    
    [zoom>=12] {
      text-size: 18;
      text-min-distance: 50;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,18,17,16,15,14";
    }
    
    [zoom>=13] {
      text-min-distance: 0;
    }
  }
  
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-face-name: @solid_label_font;
    text-fill: lighten(@label, 15%);
    text-character-spacing: 1;
    text-halo-radius: 2.5;
    text-size: 12;
    text-line-spacing: -2;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-min-distance: 5;
    text-placement-type: simple;
    text-placements: "X,N,S,NW,NE,SE,SW,W,E,12,11,10,9";
    text-dx: 2;
    text-dy: 2;
    text-align: center;
    text-min-padding: 1.3; // North of Panhandle (SF)
    
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
      text-size: 15;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,15,14,13,12,11";
      text-line-spacing: -3;
      text-halo-radius: 3;
    }
  }
}

#poi_label {
  [type='Park'] {
    text-name: '';
    text-transform: uppercase;
    text-face-name: @solid_label_font;
    text-fill: #80aa80;
    text-halo-fill: mix(@park, @halo, 50);
    text-halo-radius: 1.8;
    text-size: 12;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-character-spacing: 1;
    text-line-spacing: -2;
    text-min-distance: 10;
    text-min-padding: 1;
    text-placement-type: simple;
    text-placements: "X,N,S,NW,NE,SE,SW,W,E,12,11,10,9";
    text-dx: 2;
    text-dy: 2;
    text-horizontal-alignment: middle;
    text-align: center;
    
    [zoom>=14][scalerank<=1] {
      text-name: @name;
    }

    [zoom>=15][scalerank<=2] {
      text-wrap-width: 100;
      text-size: 13;
      text-placements: "X,N,S,NW,NE,SE,SW,W,E,13,12,11,10";
      text-halo-radius: 2;
      text-character-spacing: 1;
    }
    
    [zoom>=15][scalerank<=2] {
      text-name: @name;
    }
  }
}

#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @solid_label_font;
    text-fill: @water;
    text-halo-fill: @halo;
    text-halo-radius: 1.8;
    text-size: 13;
    text-character-spacing: 1;
    text-line-spacing: -2;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-min-padding: 1;
    text-placement-type: simple;
    text-placements: "X,N,S,NW,NE,SE,SW,W,E,13,12,11,10";
    text-dx: 2;
    text-dy: 2;
    text-horizontal-alignment: middle;
    text-align: center;
  }
}
