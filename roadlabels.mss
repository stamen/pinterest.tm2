#road_label {
  // text-fill: #5a5c5b;
  // text-fill: #333;
  text-fill: darken(#4d73a0, 15%);
  text-transform: uppercase;
  // text-fill: rgba(95, 79, 42, 0.85); // fade(#5f4f2a, 85%);
  text-name: '';
  // text-face-name: "Frutiger LT 55 Roman Regular";
  // text-face-name: "Please write me a song Medium";
  text-face-name: "Boziene Boziene";
  text-placement: line;
  text-spacing: 100;
  text-avoid-edges: true;
  text-dy: -8;

  //
  // separated highways
  //
  /*
  [class='motorway'],
  {
    [zoom>=12] {
      text-name: [name];
      text-halo-fill: #e4cba2;
      text-halo-radius: 1.5;

      text-size: 11;
    }
    
    [zoom>=14] {
      text-size: 13;
      text-spacing: 400;
    }
  }
  */

  //
  // arterials
  //
  [class='motorway_link'],
  [class='main'],
  {
    [zoom>=15] {
      text-name: [name];
      // text-halo-fill: rgba(221, 221, 221, 0.85);
      text-halo-fill: rgba(230, 230, 230, 0.85);
      text-halo-radius: 2;

      text-size: 12;
      text-character-spacing: 1;
    }
    
    [zoom>=16] {
      text-size: 12;
      text-spacing: 400;
    }
  }

  //
  // local roads
  //
  [class='street'],
  [class='street_limited'],
  [class='service'],
  {
    [zoom>=17] {
      text-name: [name];
      text-halo-fill: rgba(221, 221, 221, 0.85);
      text-halo-radius: 1.5;
      text-spacing: 400;

      text-size: 11;
    }
  }
}
