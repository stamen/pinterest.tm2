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
  text-character-spacing: 1;
  text-line-spacing: -2;
  
  [zoom>=3] {
    [scalerank<=3] {
      text-name: @name;
    }

    [scalerank<=2] {
      text-size: 15;
      text-character-spacing: 2.5;
      text-line-spacing: -5;
    }

    [scalerank<=1] {
      text-size: 18;
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
    }

    [scalerank<=2] {
      text-size: 18;
    }

    [scalerank<=1] {
      text-size: 24;
      text-character-spacing: 2.5;
      text-line-spacing: -5;
    }
  }
  
  [zoom>=5] {
    [scalerank<=5] {
      text-name: @name;
      text-size: 15;
      text-character-spacing: 1.5;
      text-min-distance: 15;
    }

    [scalerank<=3] {
      text-size: 20;
    }

    [scalerank<=2] {
      text-face-name: @sketch_label_font;
      text-size: 24;
    }
    
    [scalerank<=1] {
      text-fill: @primary_label;
      text-face-name: @sketch_label_font;
      text-size: 30;
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

  [zoom=5] {
    [name='California'] {
      text-orientation: -44;
      text-size: 20;
    }
    
    [name='Florida'] {
      text-orientation: -75;
      text-vertical-alignment: bottom;
      text-align: center;
      text-horizontal-alignment: middle;
      text-dx: 5;
      text-dy: 7;
    }

    [name='Kansas'] {
      text-orientation: 90;
      text-dx: -30;
    }
    
    [name='Michigan'] {
      text-dy: 25;
    }
    
    [name='Mississippi'] {
      text-orientation: 80;
    }
    
	[name='R.I.'] {
      text-dx: 15;
    }
    
    [name='Washington'] {
      text-dy: 12;
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
  text-face-name: @solid_label_font;
  // text-fill: @label;
  text-halo-fill: @halo;
  text-transform: uppercase;
  text-name: '';

  text-orientation: [osm_id] % 3 - 1.5;

  [osm_id<0] {
    text-orientation: ([osm_id] * -1) % 3 - 1.5;
  }
  
  [type='city'] {
    text-fill: lighten(@label, 20%);
    text-halo-radius: 3;
    text-size: 16;
    text-line-spacing: -2.5;
    text-character-spacing: 2;
    text-wrap-width: 100;
    text-wrap-before: true;
    
    [zoom>=6] {
      [scalerank<=3] {
        text-name: @name;
        text-face-name: @sketch_label_font;
        text-fill: @primary_label;
      }
    }

    [zoom>=7] {
      [scalerank<=3] {
        text-name: @name;
        text-size: 18;
      }

      [scalerank<=1] {
        text-name: @name;
        text-size: 21;
      }
    }
    
    [zoom>=8] {
      [scalerank<=6] {
        text-name: @name;
        text-fill: lighten(@label, 20%);
  
        text-size: 16;
        text-line-spacing: -5;
      }
      
      [scalerank<=4] {
        text-face-name: @sketch_label_font;
        text-fill: @primary_label;
        text-size: 20;
      }
      
      [scalerank<=2] {
        text-size: 24;
      }
    }
    
    [zoom>=9] {
      [scalerank<=9] {
        text-name: @name;
        text-size: 18;
        text-line-spacing: -5;
      }
      
      [scalerank<=5] {
        text-size: 22;
      }
      
      [scalerank<=1] {
        text-size: 24;
      }
    }
    
    [zoom>=10] {
      // introduce cities without scaleranks
      [scalerank=10],
      [scalerank=''],
      {
        text-name: @name;
        text-size: 18;
        text-line-spacing: -5;
      }
    }

    [zoom>=11] {
      text-face-name: @sketch_label_font;
      text-fill: @primary_label;

      text-size: 20;
      text-line-spacing: -6;

      [scalerank<=10] {
        text-fill: @primary_label;
        text-size: 24;
        text-line-spacing: -7;
      }
      
      [scalerank<=5] {
        text-size: 30;
        text-character-spacing: 3.2; // constrained by Vancouver, WA at z11
        text-line-spacing: -7;
      }
    }
    
    [zoom>=15] {
      text-name: '';
    }
  }

  [type='town'] {
    text-face-name: @solid_label_font;
    text-fill: lighten(@label, 20%);
    text-halo-radius: 2.5;
    text-size: 15;
    text-line-spacing: -2;
    text-character-spacing: 1.5;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-min-distance: 64;
    
    [zoom>=10] {
      text-name: @name;
    }

    [zoom>=11] {
      text-face-name: @sketch_label_font;
      text-fill: @label;
      text-size: 18;
      text-line-spacing: -4;
      text-character-spacing: 2;
    }
    
    [zoom>=12] {
      text-name: @name;
      text-size: 19;
      text-line-spacing: -5;
    }
    
    [zoom>=13] {
      text-min-distance: 10;
    }

    [zoom>=18] {
      text-name: '';
    }
  }

  [type='village'] {
    text-face-name: @solid_label_font;
    text-fill: lighten(@label, 20%);
    text-halo-radius: 2.5;
    text-size: 15;
    text-line-spacing: -3;
    text-character-spacing: 1.5;
    text-wrap-width: 100;
    text-wrap-before: true;

    [zoom>=11] {
      text-name: @name;
      text-min-distance: 100;
    }

    [zoom>=12] {
      text-size: 18;
      text-min-distance: 0;
    }

    // don't display long names without dashes in them (near
    // Neustadt an der Orla, Germany)
    [name =~ '^[^-]{12,}$'] {
      text-name: '';
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

      text-size: 14;
      text-line-spacing: -4;
      text-halo-radius: 3;
    }
  }

  [zoom<9] {
    // beyond this point, labels are sufficiently dense that Winston-Salem,
    // NC, Spartanburg, SC, etc. bump other labels in the buffered area
    [ldir=~'W'] {
      text-horizontal-alignment: left;
      text-align: right;
      text-dx: -5;
    }

    [ldir=~'E'] {
      text-horizontal-alignment: right;
      text-align: left;
      text-dx: 5;
    }

    [ldir=~'S'] {
      text-dy: 5;
    }

    [ldir=~'N'] {
      text-dy: -5;
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
