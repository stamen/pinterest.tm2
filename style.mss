// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Common Colors //
@water: #e2e1e2;
// @water: #f0f;
@park: #cec;

Map {
  font-directory: url("fonts/");
  background-image: url("images/ricepaper.png");
}

#water {
  ::shadow {
    line-color: #ccc;
    line-gamma: 20;
    line-width: 2;
    image-filters: agg-stack-blur(2, 2);
  }
  
  ::outline {
    line-color: #5e7884;
    line-gamma: 5;
    line-width: 1.5;
  }

  // polygon-pattern-file: url("images/texture18.png");
  polygon-pattern-file: url("images/blue_paper.png");
  // comp-op: multiply;
  
  /*
  line-color: #999;
  line-width: 1;
  */
  
  [zoom>=14] {
    ::outline {
      line-width: 3;
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
    [zoom>=16] { line-width: 2; }
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
  [class='park'] {
    polygon-fill: #cec;
    polygon-opacity: 0.5;
    polygon-comp-op: multiply;
    
    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }

  [class='cemetery'],
  [class='pitch'] {
    polygon-fill: #cec;
    polygon-opacity: 0.65;
    polygon-comp-op: multiply;

    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }

  [class='sand'] {
    polygon-fill: #f2eedd;
    polygon-opacity: 0.5;
    polygon-comp-op: multiply;

    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }

  [class='hospital'],
  [class='school'] {
    polygon-fill: lighten(#aacacc, 10%);
    polygon-opacity: 0.25;
    polygon-comp-op: multiply;

    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }
  
  [class='wood'] {
    polygon-fill: #cec;
    polygon-opacity: 0.75;
    polygon-comp-op: multiply;

    line-color: #999;
    line-width: 0.25;
    line-opacity: 0.5;
  }
}

#building {
  polygon-fill: #f9f9f9;
  line-color: #eee;
  line-width: 0.25;
  comp-op: multiply;
}

// Political boundaries //

#admin {
  // Countries
  [admin_level=2] {
    ::blur {
      line-join: round;
      line-width: 1;
      line-color: #a8a7a5;
      image-filters: agg-stack-blur(5, 5);
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