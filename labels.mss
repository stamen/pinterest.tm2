#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: 'Frutiger LT 45 Light Bold';
  text-transform: uppercase;
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #cb2027;
  text-halo-fill: rgba(242, 238, 221, 0.75); // #f2eedd;
  text-halo-radius: 2.5;
  text-size: 12;
  text-min-distance: 25;
  text-character-spacing: 1;
  
  
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-character-spacing: 2;
    text-size: 14;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-character-spacing: 2.5;
    text-size: 16;
  }
}

// TODO pay attention to attributes
#country_label_line {
  line-color: #333;
  line-opacity: 0.05;
}

// @label: #cb2027;
// @label: #4d87a0;
@label: #4d73a0;

#place_label {
  text-orientation: [osm_id] % 3 - 1.5;

  [osm_id<0] {
    text-orientation: ([osm_id] * -1) % 3 - 1.5;
  }

  text-name: '';
  // text-face-name: "Frutiger LT 55 Roman Bold";
  text-face-name: "KG Second Chances Solid Regular";
  text-fill: @label;
  // text-halo-fill: rgba(242, 238, 221, 0.75); // #f2eedd;
  text-halo-fill: rgba(242, 242, 242, 0.90);
  text-transform: uppercase;
  
  [zoom>=7] {
    text-name: @name;
  }

  [type='city'][zoom<=15] {
    text-face-name: "KG Second Chances Solid Regular";
    text-character-spacing: 4;
    text-halo-radius: 3;
    text-size: 24;
    text-line-spacing: -4;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=10] { text-size: 27; }
    [zoom>=12] { text-size: 52; }
    
    [zoom>=14] {
      text-character-spacing: 5;
      text-line-spacing: -7;
    }
  }
  [type='town'][zoom<=17] {
    text-face-name: "KG Second Chances Sketch Regular";
    // text-fill: lighten(#cb2027, 10%);
    // text-face-name: "Frutiger LT 45 Light Bold";
    text-character-spacing: 2.5;
    text-halo-radius: 2.5;
    text-size: 21;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=10] { text-size: 24; }
    [zoom>=12] { text-size: 30; }
  }
  [type='village'] {
    text-face-name: "KG Second Chances Solid Regular";
    text-fill: lighten(@label, 10%);
    // text-face-name: "Frutiger LT 55 Roman Regular";
    text-halo-radius: 2.5;
    text-character-spacing: 1.5;
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=12] { text-size: 21; }
    [zoom>=14] { text-size: 27; }
  }
  
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    // text-face-name: "KG Second Chances Solid Regular";
    // text-face-name: "Give It Your Heart Medium";
    // text-face-name: "PWSimpleHandwriting Medium";
    // text-face-name: "Claire Hand Bold";
    // text-face-name: "mixtapeMike_TRIAL mixtapeMike_TRIAL";
    // text-face-name: "Squiggly Asta Regular";
    text-face-name: "Songbird Regular";
    // text-face-name: "Markus Ink Regular";
    // text-face-name: "Ray Johnson Regular";
    text-fill: lighten(@label, 15%);
    // text-face-name: "Frutiger LT 45 Light Bold";
    text-character-spacing: 1.5;
    text-halo-radius: 3;
    text-size: 18;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-avoid-edges: true;
    text-min-distance: 5;
    text-transform: uppercase;
    
    [zoom>=14] {
      text-size: 32;
      text-line-spacing: -13;
      text-halo-radius: 3;
    }
    
    [zoom>=16] {
      text-size: 24;
    }
  }
}