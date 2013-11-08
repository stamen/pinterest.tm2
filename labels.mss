#place_label {
  text-name: @name;
  text-face-name: 'Frutiger LT 55 Roman Bold';
  text-character-spacing: 2;
  text-transform: uppercase;
  text-fill: fade(#5f4f2a, 85%);
  text-halo-fill: #e4cba2;
  text-halo-radius: 1.5;
  text-size: 13;
  text-wrap-width: 100;
  text-wrap-before: true;
  text-min-distance: 75;

  [type='city'][zoom<=15] {
    text-face-name: 'Frutiger LT 55 Roman Bold';
    text-opacity: 0.85;
    text-character-spacing: 0;
    text-line-spacing: -5;

    [zoom>=10] {
      text-size: 18;
      text-halo-radius: 2;
    }
    [zoom>=12] { text-size: 24; }
    [zoom>=13] {
      text-opacity: 0.75;
      text-character-spacing: 7.5;
      text-comp-op: invert;
      text-size: 45;
    }
    [zoom>=14] {
      text-name: '';
    }
  }
  [type='town'][zoom<=17] {
    text-character-spacing: 3;
    text-line-spacing: -4;
    text-avoid-edges: true;
    
    [zoom>=10] {
      text-size: 16;
      text-halo-radius: 2;
    }
    
    [zoom>=12] {
      text-size: 20;
      text-halo-radius: 1.5;
    }
  }
  [type='village'] {
    text-halo-radius: 2;
    text-avoid-edges: true;
    
    [zoom>=12] {
      text-size: 14;
      text-halo-radius: 1.5;
    }
    [zoom>=14] { text-size: 18; }
  }
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-halo-radius: 2;
    text-character-spacing: 1.5;
    text-avoid-edges: true;

    [zoom>=12] {
      text-size: 9;
    }
    
    [zoom>=14] {
      text-size: 10;
    }
    
    text-wrap-before: true;
  }
}

#area_label {
  [class='park'] {
    [zoom>=9],  // automatic area filtering @ low zooms
    [zoom>=14][area>500000],
    [zoom>=16][area>10000],
    [zoom>=17] {
      text-name: @name;
      text-face-name: "Frutiger LT 55 Roman Regular";
      text-fill: darken(@park, 60%);
      text-halo-fill: #e4cba2;
      text-halo-radius: 2.5;
      text-size: 13;
      text-wrap-width: 100;
      text-wrap-before: true;
      text-line-spacing: -1;
      text-character-spacing: 1.5;
      text-avoid-edges: true;
      text-min-distance: 128;
    }
  }
}